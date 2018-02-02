'use strict';

chrome.tabs.onUpdated.addListener(function (tabId, changeInfo, tab) {
  if (changeInfo.status !== 'loading') return;

  chrome.tabs.executeScript(tabId, {
    code: 'var injected = window.octotreeInjected; window.octotreeInjected = true; injected;',
    runAt: 'document_start'
  }, function (res) {
    if (chrome.runtime.lastError || // don't continue if error (i.e. page isn't in permission list)
    res[0]) // value of `injected` above: don't inject twice
      return;

    var cssFiles = ['jstree.css', 'file-icons.css', 'octotree.css'];

    var jsFiles = ['file-icons.js', 'jquery.js', 'jquery-ui.js', 'jstree.js', 'keymaster.js', 'ondemand.js', 'octotree.js'];

    eachTask([function (cb) {
      return eachItem(cssFiles, inject('insertCSS'), cb);
    }, function (cb) {
      return eachItem(jsFiles, inject('executeScript'), cb);
    }]);

    function inject(fn) {
      return function (file, cb) {
        chrome.tabs[fn](tabId, { file: file, runAt: 'document_start' }, cb);
      };
    }
  });
});

chrome.runtime.onMessage.addListener(function (req, sender, sendRes) {
  var handler = {
    requestPermissions: function requestPermissions() {
      var urls = (req.urls || []).filter(function (url) {
        return url.trim() !== '';
      }).map(function (url) {
        if (url.slice(-2) === '/*') return url;
        if (url.slice(-1) === '/') return url + '*';
        return url + '/*';
      });

      if (urls.length === 0) {
        sendRes(true);
        removeUnnecessaryPermissions();
      } else {
        chrome.permissions.request({ origins: urls }, function (granted) {
          sendRes(granted);
          removeUnnecessaryPermissions();
        });
      }
      return true;

      function removeUnnecessaryPermissions() {
        var whitelist = urls.concat(['https://github.com/*', 'https://bitbucket.org/*']);
        chrome.permissions.getAll(function (permissions) {
          var toBeRemovedUrls = permissions.origins.filter(function (url) {
            return ! ~whitelist.indexOf(url);
          });

          if (toBeRemovedUrls.length) {
            chrome.permissions.remove({ origins: toBeRemovedUrls });
          }
        });
      }
    }
  };

  return handler[req.type]();
});

function eachTask(tasks, done) {
  (function next() {
    var index = arguments.length <= 0 || arguments[0] === undefined ? 0 : arguments[0];

    if (index === tasks.length) done && done();else tasks[index](function () {
      return next(++index);
    });
  })();
}

function eachItem(arr, iter, done) {
  var tasks = arr.map(function (item) {
    return function (cb) {
      return iter(item, cb);
    };
  });
  return eachTask(tasks, done);
}
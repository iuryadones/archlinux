"use strict";

(function (exports) {
    function ensurePrependedSlash(roomName) {
        if (roomName && roomName[0] !== "/") {
            return "/" + roomName;
        }
        return roomName;
    }

    var reservedNames = [
        "protocol",
        "templates",
        "styles",
        "scripts",
        "libraries",
        "u",
        "i",
        "images",
        "information",
        "error",
        "extensions",
        "translations",
        "robots.txt",
        "assets",
        "apple-app-site-association",
    ];

    exports.requirements = "the room name cannot start with / or be any of these reserved words: " + reservedNames.join(", ") + ".";

    exports.pattern = "(?!(?:" + reservedNames.join("|") + ")(?:\/.*|$))([^?#]+)";

    exports.normalize = function (rawName) {
        var rawNameWithSlash = ensurePrependedSlash(rawName);
        return (rawNameWithSlash + "").trim().toLowerCase().replace(/\/*$/, "");
    };

    //Must start with slash and cannot be preceded by namespaces that we currently use in our app.
    exports.validRoomNamePattern = new RegExp("^\\/" + exports.pattern + "$");

    exports.isLegalRoomName = function (name) {
        return exports.validRoomNamePattern.test(name);
    };
// makes the code available to the browser, as exports only works for requiring the code in Node.js
})(typeof exports === "undefined" ? this["_RoomName"] = {} : exports);

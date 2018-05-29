if [[ $TERM == xterm-termite ]]; then
    . /etc/profile.d/vte.sh
    __vte_osc7
fi

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL=

if [[ -d $HOME/.oh-my-zsh ]]; then

    autoload -Uz promptinit
    promptinit
    prompt restore
    autoload -U compinit && compinit

    export ZSH=$HOME/.oh-my-zsh
    ZSH_THEME="robbyrussell"
    plugins=(extract)
    source $ZSH/oh-my-zsh.sh
fi

if [[ -d $HOME/.pyenv ]]; then
    export PYENV_USER="$HOME/.pyenv"
    export PATH="$PYENV_USER/bin:$PATH"
fi

## local_user: pipenv and others apps
if [[ -d $HOME/.local ]]; then
    export LOCAL_USER="$HOME/.local"
    export PATH="$LOCAL_USER/bin:$PATH"
fi

if [[ -d $HOME/.gem ]]; then
    PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
    export GEM_HOME=$HOME/.gem
fi

if (( $+commands[nvim] )); then
    export EDITOR=nvim
elif (( $+commands[vim] )); then
    export EDITOR=vim
else
    export EDITOR=vi
fi

if (( $+commands[pip] )); then
    eval "$(pip completion --zsh)"
fi

if (( $+commands[pipenv] )); then
    eval "$(pipenv --completion)"
fi

if (( $+commands[pyenv] )); then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

if [[ -f ~/.fzf.zsh ]]; then 
    source ~/.fzf.zsh
fi

set -o vi

alias projects="cd $HOME/Personal/GIT"
alias aulas="cd $HOME/Personal/GIT/aulas"
alias vision="cd $HOME/Personal/UFRPE/Mestrado_IA/VISAO"
alias intelivix="cd $HOME/Personal/Intelivix"

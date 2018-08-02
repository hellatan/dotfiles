# Get the aliases and functions
# get headers
# curl -is -H 'Host: www.1stdibs.com' -H 'X-Forwarded-Proto: https' 'http://prod-us-east-1-web01.intranet.1stdibs.com/furniture/storage-case-pieces/sideboards/american-sheraton-sideboard-circa-1810/id-f_1040740/' | head -20

# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

if [ -f ~/.dotfiles/git-shortcuts ]; then
	. ~/.dotfiles/git-shortcuts
fi

if [ -f ~/.dotfiles/.aliases ]; then
	. ~/.dotfiles/.aliases
fi

# the following two lines are added in ~/.bash_profile
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
#. ~/.dotfiles/git-completion.zsh

ulimit -S -n 2048

# for npm run cacheinstall
export DIBS_SERVER_USER_NAME="dale"

export HISTSIZE=1000000
export HISTFILESIZE=1000000

export GEM_HOME=/usr/local/bin
export SELENIUM_JAR=/usr/local/bin/selenium-server-standalone.jar
export PATH=$PATH:$GEM_HOME:/usr/local/share/npm/bin:/usr/local/bin:~/bin:./node_modules/.bin
export JAVA_HOME=$(/usr/libexec/java_home)
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

# mysql setup
export PATH=$PATH:/usr/local/git/bin:/usr/local/pear/bin:/usr/local/mysql/bin

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.rbenv/bin:$PATH"
if [[ "$(command -v rbenv)" ]]; then
    eval "$(rbenv init -)"
else
    echo "rbenv command not installed"
fi
export PATH="/usr/local/opt/node@8/bin:$HOME/.yarn/bin:$PATH"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/opt/gettext/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


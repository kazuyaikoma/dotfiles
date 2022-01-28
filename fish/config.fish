# Common
# path
# set -x PATH (stack path --local-bin) $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.poetry/bin $PATH

# 共用ライブラリ設定
set -x LD_LIBRARY_PATH /usr/local/lib

# ghq
set -x PATH $HOME/go/bin $PATH
set -x PATH /snap/bin $PATH

# direnv
# eval (direnv hook fish)

# setting with each os
if test (string match -r 'microsoft' (uname -r))
  set -x PATH /usr/local/bin $PATH
  set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
  # XDG
  set -x XDG_CONFIG_HOME $HOME/.config
  set -x XDG_CASCHE_HOME $HOME/.cache
  # lang
  set -x LANG en_US.UTF8
  # BROWSER
  set -x BROWSER wsl-open

  zoxide init fish | source
  cd

else if test (string match -r 'Linux.*' (uname))
  set -x PATH /usr/local/bin $PATH
  set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
  # XDG
  set -x XDG_CONFIG_HOME $HOME/.config
  set -x XDG_CASCHE_HOME $HOME/.cache
  # lang
  set -x LANG en_US.UTF8
  # flutter
  set -x PATH /usr/local/flutter/bin $PATH

  # zoxide
  zoxide init fish | source
  # starship
  starship init fish | source

else if test (string match -r 'Darwin.*' (uname))
  # brew
  fish_add_path /opt/homebrew/bin

  # JDK setting
  # set -x JAVA_HOME /usr/libexec/java_home

  # Flutter
  fish_add_path $HOME/flutter/bin
  # fish_add_path /usr/local/opt/openjdk@11/bin
  # set -x CPPFLAGS -I/usr/local/opt/openjdk@11/include

  # mysql-client
  fish_add_path /opt/homebrew/opt/mysql-client/bin

  # Android SDK
  set -x ANDROID_HOME $HOME/Android/Sdk
  set -x PATH $ANDROID_HOME/tools $PATH
  set -x PATH $ANDROID_HOME/platform-tools $PATH
  set -x JAVA_HOME /Applications/Android\ Studio.app/Contents/jre/Contents/Home
  set -x PATH $JAVA_HOME/bin $PATH
end

# theme
starship init fish | source
set -x STARSHIP_CONFIG ~/.starship/config.toml

# anyenv
fish_add_path $HOME/.anyenv/bin
status --is-interactive; and source (anyenv init - --no-rehash| psub)

# nodenv
set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
fish_add_path $HOME/.anyenv/envs/nodenv/bin
fish_add_path $NODENV_ROOT/shims

# node packages
fish_add_path $HOME/.anyenv/envs/nodenv/versions/(nodenv versions --bare)/bin

# pyenv
set -x PYENV_ROOT "$HOME/.anyenv/envs/pyenv"
fish_add_path $PYENV_ROOT/shims

# rbenv
set -x RBENV_ROOT "$HOME/.anyenv/envs/rbenv"
fish_add_path $RBENV_ROOT/shims

# goenv
set -x GOENV_ROOT "$HOME/.anyenv/envs/goenv"
fish_add_path "$GOENV_ROOT/bin"
set -x GOROOT (goenv prefix)
set -x GOPATH $HOME/go/(goenv versions --bare)
fish_add_path $RBENV_ROOT/shims

# gh command setting
eval (gh completion -s fish| source)

# jethrokuan/fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"


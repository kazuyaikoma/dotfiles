# Common
# path
# set -x PATH (stack path --local-bin) $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.poetry/bin $PATH

# 共用ライブラリ設定
set -x LD_LIBRARY_PATH /usr/local/lib

# Android SDK
set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH

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
  set -x PATH /opt/homebrew/bin $PATH
  # JDK setting
  # set -x JAVA_HOME /usr/libexec/java_home
  # Flutter
  set -x PATH $HOME/flutter/bin $PATH
end

# theme
starship init fish | source
set -x STARSHIP_CONFIG ~/.starship/config.toml

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init - | psub)

# nodenv
set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $HOME/.anyenv/envs/nodenv/bin $PATH
set -gx PATH $NODENV_ROOT/shims $PATH

# node packages
set -x PATH $HOME/.anyenv/envs/nodenv/versions/(nodenv versions --bare)/bin $PATH

# pyenv
set -x PYENV_ROOT "$HOME/.anyenv/envs/pyenv"
set -gx PATH $PYENV_ROOT/shims $PATH
eval (pyenv init - | source)

# rbenv
set -x RBENV_ROOT "$HOME/.anyenv/envs/rbenv"
set -gx PATH $RBENV_ROOT/shims $PATH
eval (rbenv init - | source)

# goenv
set -x GOENV_ROOT "$HOME/.anyenv/envs/goenv"
set -x PATH "$GOENV_ROOT/bin" $PATH
set -x GOROOT (goenv prefix)
set -x GOPATH $HOME/go/(goenv versions --bare)
set -gx PATH $RBENV_ROOT/shims $PATH
eval (goenv init - | source)

# gh command setting
eval (gh completion -s fish| source)

# jethrokuan/fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"


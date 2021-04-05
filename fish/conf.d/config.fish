# Common
# path
# set -x PATH (stack path --local-bin) $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.poetry/bin $PATH

# jethrokuan/fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init - | psub)

# nodenv
set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $HOME/.anyenv/envs/nodenv/bin $PATH
set -gx PATH $NODENV_ROOT/shims $PATH

# node packages
# TODO: *指定ではなくて、現在のnodeバージョンに応じて切り替える
set -x PATH $HOME/.anyenv/envs/nodenv/versions/*/bin $PATH

# go path
set -x PATH /usr/local/go/bin $PATH
# go package path
set -x GOPATH $HOME/go
set -x GOBIN $GOPATH/bin
set -x PATH $PATH $GOBIN

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

  # disable specific kworker
  echo disable | sudo tee /sys/firmware/acpi/interrupts/gpe4E
  echo 'gpe4E kworker disabled.'

  zoxide init fish | source

else if test (string match -r 'Darwin.*' (uname))
  # JDK setting
  # set -x JAVA_HOME /usr/libexec/java_home
  # Flutter
  set -x PATH $HOME/flutter/bin $PATH
end

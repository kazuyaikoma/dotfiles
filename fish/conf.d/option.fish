# system update
alias clean='sudo apt autoremove -y; and brew cleanup'

# git
alias g='cd (ghq root)/(ghq list | fzf)'
alias gb='git branch'
alias gs='git status'
alias gco='git checkout'
alias push='git push origin (git rev-parse --abbrev-ref HEAD)'
alias pull='git pull origin (git rev-parse --abbrev-ref HEAD)'
alias amend='git commit --amend'
alias stash='git stash'

# fish
alias anyenv-rehash='source ~/.config/fish/anyenv-rc.sh'

# haskell
# alias ghci='stack exec ghci'

# repls
alias irb='pry'
alias ipy='ipython'
alias rust='evcxr'

# apt
alias gapt='sudo apt install -y'

# utils
alias s='source'
alias l='lsd -l'
alias la='lsd -la'
alias tree='lsd --tree'
alias atree='lsd -la --tree'
alias t='touch'
alias his='eval (history | peco)'
alias openf='xdg-open'
alias wish='xdg-open https://github.com/nixii/wishlist/issues'
alias fast='fast -u'
alias cpu="watch -n 0.1 sensors"
alias dwn="countdown"

alias ...='cd ../..'
alias cdw='cd ~/ghq/github.com/nixii/workspace'
alias cdc='cd ~/.config'
alias goo='googler'
alias fd='open (pwd)'
alias c='clear'
alias csv='vd'
alias restart='shutdown -r'
alias tl='tldr'

# translate
alias ej="trans -brief :ja"
alias je="trans -brief :en"

# unimatrix
alias uni="unimatrix -c blue -u 'Linux'"

# alias search
alias agrep='alias | grep'

# neovim
alias vi='nvim'
alias nv='vi (find ./* -type f | fzf)'
alias vimreset='rm ~/.local/share/nvim/swap/*.swp'

# weather
alias tenki='curl wttr.in/Kanagawa'
alias tokyo='curl v2.wttr.in/Tokyo'
alias kanagawa='curl v2.wttr.in/Kanagawa'

# C, C++ runner
alias crun='gcc -o a.out $argv[1]; and ./a.out'
alias cpprun='g++ -o a.out $argv[1]; and ./a.out'

# poetry
alias po='poetry'

# Flutter
alias fl='flutter'

# vala
alias valarun='valac --pkg gtk+-3.0 Application.vala; and ./Application'

# docker
alias d='docker'
alias dc='docker-compose'
alias dcup='dc up -d; and dc up'
alias dstat='sudo docker stats'

# rails
alias be='bundle exec'

# atcoder (for golang)
alias atc='atcoder-tools gen --lang go --workspace ($HOME/ghq/github.com/nixii/atcoder/AtCoder) $argv[1]'
alias atest='go build -buildmode=exe -o ./a.out ./main.go; and atcoder-tools test'
alias adebug='go build -buildmode=exe -o ./a.out ./main.go; and ./a.out'
alias atest-cpp='g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -o a.out ./main.cpp; and atcoder-tools test'
alias sub='atcoder-tools submit -u'

# MikanOS
alias mikan-qemu='$HOME/osbook/devenv/run_qemu.sh'

# nand2tetris
alias nand2tetris='bash $HOME/ghq/github.com/nixii/nand2tetris/tools/HardwareSimulator.sh'

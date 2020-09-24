# system update
alias clean='sudo apt autoremove; and brew cleanup'

# git
alias g='cd (ghq root)/(ghq list | fzf)'
alias gb='git branch'
alias gs='git status'
alias gco='git checkout'
alias pull='git pull'
alias push='git push'
alias amend='git commit --amend'
alias stash='git stash'

# haskell
# alias ghci='stack exec ghci'

# Rust repl
alias rust='evcxr'

# repls
alias irb='pry'
alias ipy='ipython'

# apt
alias gapt='sudo apt install -y'

# utils
alias s='source'
alias l='exa -l'
alias la='exa -la'
alias tree='exa -l --tree'
alias atree='exa -la --tree'
alias t='touch'
alias his='eval (history | peco)'

alias ...='cd ../..'
alias cdw='cd ~/ghq/github.com/nixiesquid/workspace'
alias cdc='cd ~/.config'
alias goo='googler'
alias goto='googler -j'
alias fd='open (pwd)'
alias c='clear'
alias b='byobu'
alias csv='vd'
alias pbcopy='xsel --clipboard --input'
alias restart='shutdown -r'
alias tl='tldr'

# alias search
alias agrep='alias | grep'

# neovim
alias vi='nvim'
alias nv='vi (find ./* -type f | fzf)'
alias vimreset='rm ~/.local/share/nvim/swap/*.swp'

# weather
alias tenki='curl wttr.in/Tokyo'
alias kion='curl v2.wttr.in/Tokyo'

# C, C++ runner
alias crun='gcc -o a.out $argv[1]; and ./a.out $argv[2..-1]'
alias cpprun='g++ -o a.out $argv[1]; and ./a.out $argv[2..-1]'

# poetry
alias po='poetry'

# vala
alias valarun='valac --pkg gtk+-3.0 Application.vala; and ./Application'

# docker
alias d='docker'
alias dc='docker-compose'
alias dstat='sudo docker stats'

# rails
alias be='bundle exec'

# atcoder
alias atc='atcoder-tools gen --workspace ($HOME/ghq/github.com/nixiesquid/atcoder/AtCoder) $argv[1]'
alias atest='g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -o a.out ./main.cpp; and atcoder-tools test'

# SELF project
alias api-in='docker exec -it self-api_app_1 sh'
alias ml-in='docker exec -it self-ml_app_1 sh'

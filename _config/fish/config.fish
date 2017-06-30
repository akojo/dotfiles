

# OPAM configuration
abbr g git
abbr ga 'git add'
abbr gau 'git add -u'
abbr gC 'git clean -fd'
abbr gc 'git commit --verbose'
abbr gca 'git commit --verbose --amend'
abbr gco 'git checkout'
abbr gd 'git diff'
abbr gdc 'git diff --cached'
abbr gf 'git fetch'
abbr gfa 'git fetch --all'
abbr gh 'git push heroku master'
abbr gl 'git log --pretty=format:\'%C(auto)%h %C(red)%cr%C(reset) %C(cyan)%an%C(reset)%C(auto) %d %s\' --graph --topo-order'
abbr gm 'git push origin master'
abbr gp 'git push'
abbr gpf 'git push --force'
abbr gr 'git pull --rebase'
abbr gra 'git rebase --abort'
abbr grc 'git rebase --continue'
abbr gri 'git rebase --interactive'
abbr gs 'git status --short'
abbr gx 'git reset'
abbr gxh 'git reset --hard'

eval (thefuck --alias | tr '\n' ';')
eval (opam config env)
set -gx PATH {$HOME}/bin $PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

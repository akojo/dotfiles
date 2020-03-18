

# OPAM configuration
abbr g git
abbr ga 'git add'
abbr gau 'git add -u'
abbr gb 'git branch'
abbr gba 'git branch -a'
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

which thefuck >/dev/null; and eval (thefuck --alias | tr '\n' ';')
which opam >/dev/null; and eval (opam config env)
set -gx EDITOR vim
set -gx PATH {$HOME}/bin {$HOME}/go/bin {$HOME}/.local/bin $PATH /snap/bin
set -gx MANPATH {$HOME}/share/man (env MANPATH= manpath)
set -gx TCLLIBPATH /usr/local/lib

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# WTF these keep appearing in my global variable list
set -ge OP_SESSION_family_kojo
set -ge AWS_ACCESS_KEY_ID
set -ge AWS_SECRET_ACCESS_KEY
set -ge AWS_SECURITY_TOKEN
set -ge AWS_SESSION_TOKEN

fish_ssh_agent

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

# Prevent fish from importing these universal variables as globals
set -e -g OP_SESSION_family_kojo

which thefuck >/dev/null; and eval (thefuck --alias | tr '\n' ';')
which opam >/dev/null; and eval (opam config env)
set -gx EDITOR vim
set -gx PATH {$HOME}/bin {$HOME}/go/bin {$HOME}/.local/bin $PATH /snap/bin
set -gx MANPATH {$HOME}/share/man (env MANPATH= manpath)
set -gx TCLLIBPATH /usr/local/lib
set -gx DOCKER_BUILDKIT 1

set -gx LUA_PATH '/home/atte/.luarocks/share/lua/5.3/?.lua;/home/atte/.luarocks/share/lua/5.3/?/init.lua;/usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;/usr/share/lua/5.3/?.lua;/usr/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua'
set -gx LUA_CPATH '/home/atte/.luarocks/lib/lua/5.3/?.so;/usr/local/lib/lua/5.3/?.so;/usr/lib/x86_64-linux-gnu/lua/5.3/?.so;/usr/lib/lua/5.3/?.so;/usr/local/lib/lua/5.3/loadall.so;./?.so'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

test -e ~/google-cloud-sdk/path.fish.inc; and source ~/google-cloud-sdk/path.fish.inc

fish_ssh_agent

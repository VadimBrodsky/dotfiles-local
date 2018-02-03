# ruby
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# node
# https://github.com/brigand/fast-nvm-fish
if test -e ~/.config/fish/functions/nvm.fish
  set -U fish_user_paths
  nvm use 8.2.1
end

# yarn
set -xg PATH $HOME/.yarn/bin $PATH 

# swift 
set -gx SWIFTENV_ROOT "$HOME/.swiftenv"
set -gx PATH "$SWIFTENV_ROOT/bin" $PATH
if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

# Go setup
# set -xg GOPATH $HOME/go
# set -xg GOROOT /usr/local/go
# set -xg PATH $GOPATH/bin $PATH
# set -xg GO15VENDOREXPERIMENT 1

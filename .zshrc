#
# Setting Paths
#

# PATH=$HOME/.rbenv/bin:$PATH
PATH=$HOME/.node_modules/bin:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/Users/davidturner/.gem/ruby/2.2.0:$PATH
PATH=/usr/local/opt/rbenv/versions/2.2.3/lib/ruby/gems/2.2.0:$PATH
PATH=/usr/local/opt/rbenv/versions/2.2.3/bin:$PATH
# PATH=/usr/local/opt/rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems:$PATH
# PATH=/usr/local/opt/rbenv/versions/2.2.3/lib/ruby:$PATH

include_path=".:/usr/local/php/pear/"
export PATH=$PATH
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export NVM_DIR=~/.nvm
export GICORE=~/Server/get-invited-core/scss/
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# export GEM_PATH=/usr/local/opt/rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/

export LANG=en_GB.utf8

# echo $PATH

#
# Load in NVM
#

source ~/.nvm/nvm.sh

#
# Load up rbenv
#

eval "$(rbenv init -)"

#
# Load in supporting files

files=('aliases' 'functions' 'variables')

for file in $files; do
  if [ -f ~/."$file" ]; then
    source ~/."$file"
  else
    print "404: ~/."$file" not found."
  fi
done;

#
# Load up ZSH
#

source $ZSH/oh-my-zsh.sh
eval $(thefuck --alias)

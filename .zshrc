#
# Setting Paths
#

PATH=/usr/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/bin:$PATH
PATH=/usr/sbin:$PATH
PATH=/sbin:$PATH
PATH=/usr/local/php5/bin:$PATH
PATH=$HOME/.rbenv/bin:$PATH
PATH=$HOME/.node_modules/bin:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH
PATH=/usr/local/opt/rbenv/versions/2.1.5:$PATH
PATH=/usr/local/opt/rbenv/versions/2.1.5/lib/ruby/gems/2.1.0:$PATH
PATH=$HOME/.gem/ruby/2.1.0:$PATH
include_path=".:/usr/local/php/pear/"
export PATH=$PATH
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export NVM_DIR=~/.nvm
export GICORE=~/Server/get-invited-core/scss/
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

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
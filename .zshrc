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
include_path=".:/usr/local/php/pear/"
export PATH=$HOME/.composer/vendor/bin:$PATH
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export NVM_DIR=~/.nvm

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
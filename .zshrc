files=('aliases' 'functions' 'variables')

for file in $files; do
    if [ -f ~/."$file" ]; then
        source ~/."$file"
    else
        print "404: ~/."$file" not found."
    fi
done;

# start the ssh-agent
# function start_agent {
#     echo "Initializing new SSH agent..."
#     # spawn ssh-agent
#     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
#     echo succeeded
#     chmod 600 "${SSH_ENV}"
#     . "${SSH_ENV}" > /dev/null
#     /usr/bin/ssh-add
# }
# if [ -f "${SSH_ENV}" ]; then
#      . "${SSH_ENV}" > /dev/null
#      ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#         start_agent;
#     }
# else
#     start_agent;
# fi

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH=/usr/local/php5/bin:$PATH
export PATH=$HOME/.node_modules/bin:$PATH
include_path=".:/usr/local/php/pear/"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
eval "$(rbenv init -)"
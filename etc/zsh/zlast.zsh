# for GPP
export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"
source "$APP_HOME/etc/bashrc"

source =(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')

# for PATH
export PATH="$ENV/bin:$ENV/tools:/opt/subversion/bin:/usr/local/bin:/usr/local/sbin:$PATH"

archey -c

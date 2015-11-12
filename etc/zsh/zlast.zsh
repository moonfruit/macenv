# for GPP
export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"
NOCD=1 source "$APP_HOME/etc/bashrc"

source =(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')

# for PATH
export PATH="$ENV/bin:$ENV/tools:/opt/subversion/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# dylink "$DYLD_FALLBACK_LIBRARY_PATH"
archey

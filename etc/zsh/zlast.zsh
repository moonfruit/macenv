# for GPP
export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"
NOCD=1 source "$APP_HOME/etc/bashrc"

# source =(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')
eval "$(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')"

# for PATH
export PATH="$ENV/bin:$ENV/tools:/opt/subversion/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/var/python/bin/activate

# catalog
export XML_CATALOG_FILES="$ENV/package/vim/XMLCatalog/catalog.xml"

# dylink "$DYLD_FALLBACK_LIBRARY_PATH"
archey -o

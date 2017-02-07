# for GPP
export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"
NOCD=1 source "$APP_HOME/etc/bashrc"

# source =(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')
eval "$(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')"

# for PATH
USER_PYTHON_HOME="/Users/moon/Library/Python/2.7"
export PATH="/opt/subversion/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$ENV/bin:$ENV/tools:$USER_PYTHON_HOME/bin:$PATH"

# virtualenv
# if [[ -n "$TERM" ]]; then
	# export VIRTUAL_ENV_DISABLE_PROMPT=1
	# source /usr/local/var//bin/activate
# fi

# catalog
export XML_CATALOG_FILES="$ENV/package/vim/XMLCatalog/catalog.xml"

# dylink "$DYLD_FALLBACK_LIBRARY_PATH"
archey -o

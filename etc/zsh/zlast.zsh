# for GPP
export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"
NOCD=1 source "$APP_HOME/etc/bashrc"

source =(env | grep _HOME | sed 's/\(.*\)=.*/hash -d \1="$\1"/')

# for PATH
export PATH="$ENV/bin:$ENV/tools:/opt/subversion/bin:/usr/local/bin:/usr/local/sbin:$PATH"

cd ~/lib
for DYDIR in `echo "$DYLD_FALLBACK_LIBRARY_PATH" | sed 's/^\.://;s/:/ /g'`; do
	for DYLIB in `find "$DYDIR" -name "*.dylib" -o -name "*.dylib.*" 2>/dev/null`; do
		ln -sf "$DYLIB"
	done
done
find . -xtype l | xargs rm 2>/dev/null
cd

archey

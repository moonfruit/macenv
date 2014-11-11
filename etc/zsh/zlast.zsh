export APP_HOME="$WORKSPACE/gpp"
export NODE_ID="YY"

TCLIHOMEDIR="/dev/null" TUXDIR="/dev/null" NOCD="yes" \
	source "$APP_HOME/etc/bashrc"

archey -c

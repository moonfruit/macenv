export DOWNLOAD="$HOME/Downloads"

export ENV="$HOME/Documents/Enviroment"

export WORKSPACE="$HOME/Documents/Workspace"

dev() {
    if [ -z "$APP_HOME" ]; then
        export APP_HOME="$WORKSPACE/gpp"
        export NODE_ID="YY"

        export TCLIHOMEDIR="/dev/null"
        export TUXDIR="/dev/null"

        source "$APP_HOME/etc/bashrc"
    fi
    cd "$APP_HOME"
}

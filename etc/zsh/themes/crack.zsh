prompt_virtualenv() {
	local virtualenv_path="$VIRTUAL_ENV"
	if [[ -z $virtualenv_path ]]; then
		virtualenv_path="system"
	elif [[ $virtualenv_path = "/usr/local/var/python" ]]; then
		virtualenv_path=""
	fi
	if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
		prompt_segment blue black "(`basename $virtualenv_path`)"
	fi
}

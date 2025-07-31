function osc-copy {
	printf "\e]52;c;%s\a" "$(printf %s "$(cat)" | base64 | tr -d '\n')"
}

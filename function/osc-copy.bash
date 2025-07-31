function osc-copy {
	tee >(base64 -w 0 | xargs printf "\e]52;c;%s\a" >&2)
}

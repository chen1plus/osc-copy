# shellcheck shell=bash

FUNCTION_NAME='osc-copy'

while [[ $# -gt 0 ]]; do
	case "$1" in
		--function-name)
			if [ -n "$2" ] && [[ "$2" != --* ]]; then
				FUNCTION_NAME="$2"
				shift
				shift
			else
				echo 'error: --function-name requires a value' >&2
				exit 1
			fi
			;;

		*)
			echo 'error: unknown option' >&2
			exit 1
			;;
	esac
done

cat << EOF
function $FUNCTION_NAME {
	tee >(base64 -w 0 | xargs printf "\e]52;c;%s\a")
}
EOF

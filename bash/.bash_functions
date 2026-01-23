# Create a new directory and enter it
function mkcd() {
	mkdir -pv "$@" && cd "$@"
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function mvcd() {
# expecting the second argument to be a directory
    mv "$1" "$2"
    cd "$2"
  }

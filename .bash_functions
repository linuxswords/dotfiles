# force mr workflow
function mrmerge()
{
    git merge --no-commit --no-ff origin/merge-requests/$1
}

# Create a new directory and enter it
function md() {
	mkdir -pv "$@" && cd "$@"
}


# find shorthand
function f() {
    find . -name "$1"
}

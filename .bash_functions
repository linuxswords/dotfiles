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

# encode file
function encode() {
    # make sure we get a file name
    if [ $# -lt 1 ]; then
        echo "Usage: encode filename"
        return 1
    fi
    openssl enc -e -aes256 -in "$1" -out "$1".enc
}

function decode() {
# make sure we get 2 files
    if [ $# -lt 2 ]; then
        echo "Usage: decode encrypted_file decrypted_file"
        return 1
    fi
    openssl enc -d -aes256 -in "$1" -out "$2"
}


# Usage: diff_website.sh BEFORE_DIR AFTER_DIR

before_dir="$1"
after_dir="$2"

diff --recursive \
     --brief \
     --exclude=.git --exclude LICENSE --exclude=README.md \
     "$before_dir" "$after_dir"

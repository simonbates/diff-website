# Usage: diff_page.sh BEFORE_DIR AFTER_DIR FILE

before_dir="$1"
after_dir="$2"
filename="$3"

# Strip leading whitespace and remove blank lines
before_file=$(mktemp "/tmp/cities-before.XXXX")
after_file=$(mktemp "/tmp/cities-after.XXXX")
cat "${before_dir}/${filename}" | sed 's/^[ \t]*//' | sed '/^$/d' > $before_file
cat "${after_dir}/${filename}" | sed 's/^[ \t]*//' | sed '/^$/d' > $after_file

diff --unified "$before_file" "$after_file"

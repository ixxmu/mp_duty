#!/usr/bin/env bash
# Convert the top-level header into a frontmatter title and current date, and
# download any non-local images and convert them into local images.
#
# Example:
#   $ echo -e "#foo bar\nbaz" | ./frontmatterify
#   +++
#   title = "foo bar"
#   date = "2020-11-30"
#   +++
#   baz

# Find the frontmatter
while read line; do
    if [[ "$line" =~ ^#([^#]{1}.*) ]]; then # Title, emit our own frontmatter
        echo "+++"
        echo "title = \"$(echo -n ${BASH_REMATCH[1]} | tr -d '\n\r')\"" # omg avoid printing EOL
        echo "date = \"$(date -I)\""
        echo "+++"
        break
    elif [[ "$line" =~ ^[\-+]{3} ]]; then # Frontmatter, emit it verbatim
        echo $line
        break
    fi
done

# Process the body
while read line; do
    if [[ "$line" =~ \!\[.*\]\(https://(.*)\) ]]; then
        # Download remote images locally, rewrite the image include.
        # FIXME: This doesn't work if there is more than one image on a line
        for url in "${BASH_REMATCH[@]}"; do
            url="https://$url"
            wget -q "$url"
            line=${line//$url/$(basename "$url")}
        done
    fi
    echo $line
done

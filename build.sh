#!/bin/bash

# install deps
sudo apt-get install -y pandoc

# build markdown
for i in `find . -name "*.md" -type f`; do
    newpath="$(dirname "$i")/$(basename "$i" .md).html"
    pandoc \
        --from markdown \
        --to html \
        -o "$(realpath "$newpath")" \
        "$(realpath "$i")"
done

# copy files to output
mkdir publish
cp -r de publish/
cp -r en publish/

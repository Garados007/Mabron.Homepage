#!/bin/bash

# install deps
sudo apt-get install -y markdown

# build markdown
for i in `find . -name "*.md" -type f`; do
    markdown \
        -f links,image,smarty,html,ext,cdata,superscript,emphasis,del,toc,divquote,alphalist,definitionlist,footnote \
        -o "$(realpath \"$(dirname \"$i\")/$(basename \"$i\" .md).html\")" \
        "$(realpath \"$i\")"
done

# copy files to output
mkdir publish
cp -r de publish/
cp -r en publish/

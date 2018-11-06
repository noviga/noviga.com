#!/bin/bash

# Prerequisites:
#     sudo apt python-scour

cd "$(dirname "$(readlink -f "${0}")")"

SVGS="\
noviga-logo \
"

for SVG in $SVGS
do
  scour -i ../img/$SVG.svg -o ../docs/img/$SVG.svg --strip-xml-prolog --remove-titles --remove-descriptions --remove-metadata --remove-descriptive-elements --enable-comment-stripping --enable-viewboxing --indent=none --no-line-breaks --strip-xml-space --enable-id-stripping --shorten-ids
done

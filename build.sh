#!/bin/bash

# Convert reST files to HTML
for file in content/**/*.rst; do
    rst2html.py "$file" "${file%.rst}.html"
done

# Run Hugo to build the site with options
hugo --gc --minify 

#!/bin/bash

set -e

# Build PDF
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -aux-directory=./auxil m.tex
# Build Markdown
pandoc -s -t gfm --syntax-definition=m.xml --webtex --listings m.tex -o m.md
# Build HTML5
pandoc -s -t html5 --syntax-definition=m.xml --katex --css pandoc.css --listings m.tex -o m.html

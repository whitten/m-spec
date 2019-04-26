# m-spec

The specification for [the M programming language](https://m-language.github.io/m-spec/m.html) (also available as [markdown](m.md) and [pdf](https://github.com/m-language/m-spec/raw/master/m.pdf)).

- To generate html, run `pandoc -s -t html5 --syntax-definition=m.xml --katex --css pandoc.css --listings m.tex -o m.html`
- To generate markdown, run `pandoc -s -t gfm --syntax-definition=m.xml --webtex --listings m.tex -o m.md`
- To generate the pdf, run `pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -aux-directory=./auxil m.tex`

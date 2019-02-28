# m-spec

The specification for [the M programming language](m.pdf) (also available as [markdown](m.md) and [html](m.html)).

- To generate the pdf, run `pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -aux-directory=./auxil m.tex`
- To generate markdown, run `pandoc -s -t gfm --syntax-definition=m.xml --webtex --listings m.tex -o m.md`
- To generate html, run `pandoc -s -t html5 --syntax-definition=m.xml --katex --listings m.tex -o m.html`
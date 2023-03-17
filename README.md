# gt_table_demo


## Installation Instructions

- Install the R package `TinyTex`
    - `install.packages('tinytex')`
    - `tinytex::install_tinytex()`
- Install missing tex packages by running the following command:
    - `tlmgr install tcolorbox pgf environ pdfcol parsnip unquote eurosym ucs adjust box titling enumitem Clem collection-fontsrecommended`
    - Download the [`mathrsfs`](https://ctan.org/pkg/mathrsfs?lang=en) package and store it in `~/Users/<username>/Library/TinyTex/texmf-dist/tex/generic`
- Install `jupyter`
- Install [`pandoc`](https://pandoc.org/installing.html)

## Current Exporting Issues

### RStudio

- The `gt` table exports correctly when "Knitting" `.Rmd` to Word document
- The `gt` table does not export correctly when Knitting to PDF (table gets cutoff since first column is too wide and colormap does not appear in columns)

### VSCode
- The `gt` table exports correctly to HTML using `jupyter nbconvert`
- The `gt` table does not export correctly to PDF, tex using `jupyter nbonvert`
    - Instead of rendering the table, it displays the error message: `Shiny tags cannot be represented in plain text (need html)`


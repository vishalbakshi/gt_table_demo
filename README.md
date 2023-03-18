# gt_table_demo
This repo serves as a (hopefully) reproducible demonstration of issues I'm running into with exporting documents with `gt` tables:

- RStudio
    - The table looks fine when I knit `gt_table_demo.Rmd` to to Word
    - but doesn't format as expected when I knit to PDF (it ignores my `data_color` colormap and the table is truncated since it doesn't word wrap the text in the first column)
- VSCode
    - I can use my `jupyter nbconvert` command (in my `notebook_exports.cmd` file) to export `gt_table_demo.ipynb` to HTML and the `gt` table looks okay.
    - When I try to export my notebook to LaTeX of PDR, it prints the error `Shiny tags cannot be represented in plain text (need html)` instead of the table in the .tex document
    - When I try to export `html/gt_table_demo.html` to .docx it loses the table formatting and prints a list of table values

## Installation Instructions

### TinyTex Installation
- Install the R package `TinyTex`
    - `install.packages('tinytex')`
    - `tinytex::install_tinytex()`
- Install missing tex packages by running the following command:
    - `tlmgr install tcolorbox pgf environ pdfcol parsnip unquote eurosym ucs adjust box titling enumitem Clem collection-fontsrecommended`
    - Download the [`mathrsfs`](https://ctan.org/pkg/mathrsfs?lang=en) package and store it in `~/Users/<username>/Library/TinyTex/texmf-dist/tex/generic`

### Jupyter Installation
- Install `jupyter` by running `pip install jupyter` or similar

### Pandoc Installation
- Install [`pandoc`](https://pandoc.org/installing.html) (the Haskell library, not the python one)

### VSCode Installation
- Install [VSCOde](https://code.visualstudio.com/download)
- Follow [these instructions](https://code.visualstudio.com/docs/languages/r) to install the R package `languageserver` and the [R Extension for VSCode](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)

## Current Exporting Issues

### RStudio

- The `gt` table exports correctly when "Knitting" `.Rmd` to Word document
- The `gt` table does not export correctly when Knitting to PDF (table gets cutoff since first column is too wide and colormap does not appear in columns)

### VSCode
- The `gt` table exports correctly to HTML using `jupyter nbconvert`
- The `gt` table does not export correctly to PDF, tex using `jupyter nbonvert`
    - Instead of rendering the table, it displays the error message: `Shiny tags cannot be represented in plain text (need html)`


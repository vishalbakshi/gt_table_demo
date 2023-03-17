:: convert to HTML
jupyter nbconvert --HTMLExporter.exclude_input=True --HTMLExporter.exclude_output=FALSE --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags "code-documentation" --TemplateExporter.extra_template_basedirs="templates" --FilesWriter.build_directory="html" --NbConvertApp.output_base="gt_table_demo_from_vscode" --to html --template vishal-html "gt_table_demo.ipynb"

:: convert ipynb to PDF
jupyter nbconvert --PDFExporter.exclude_input=True --PDFExporter.exclude_output=False --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags "code-documentation" --TemplateExporter.extra_template_basedirs="templates" --FilesWriter.build_directory="PDF" --NbConvertApp.output_base="gt_table_demo_from_vscode" --to pdf --template vishal-pdf "gt_table_demo.ipynb"

:: convert ipynb to latex
jupyter nbconvert --LatexExporter.exclude_input=True --LatexExporter.exclude_output=False --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags "code-documentation" --TemplateExporter.extra_template_basedirs="templates" --FilesWriter.build_directory="latex" --NbConvertApp.output_base="gt_table_demo_from_vscode" --to latex --template vishal-pdf "gt_table_demo.ipynb"

:: convert ipynb to .md
:: pandoc --from ipynb --to markdown gt_table_demo.ipynb -o gt_table_demo.md

:: convert md to docx
:: pandoc +RTS -K512m -RTS gt_table_demo.md --to docx --from markdown+autolink_bare_uris+tex_math_single_backslash --output gt_table_demo.docx 

:: convert HTML to PDF
pandoc html/gt_table_demo_from_vscode.html -t latex -o PDF/gt_table_demo_from_vscode_html.pdf

:: convert HTML to .tex
pandoc html/gt_table_demo_from_vscode.html -s -o latex/gt_table_demo_from_vscode_html.tex

:: convert .tex to .docx
pandoc latex/gt_table_demo_from_vscode.tex -s -o docx/gt_table_demo_from_vscode_tex.docx
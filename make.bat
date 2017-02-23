set ARTICLE=template
latex %ARTICLE%.tex
bibtex %ARTICLE%
latex %ARTICLE%.tex
gbk2uni %ARTICLE%
latex %ARTICLE%.tex
dvipdfmx %ARTICLE%.dvi
start "" "C:\Program Files\SumatraPDF\SumatraPDF.exe" ./%ARTICLE%.pdf

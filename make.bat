set ARTICLE=template
latex --enable-pipes %ARTICLE%.tex
bibtex %ARTICLE%
latex --enable-pipes %ARTICLE%.tex
gbk2uni %ARTICLE%
latex --enable-pipes %ARTICLE%.tex
dvipdfmx %ARTICLE%.dvi
start "" "C:\Program Files\SumatraPDF\SumatraPDF.exe" ./%ARTICLE%.pdf

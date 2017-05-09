del /Q *.aux *.toc *.lon *.lor *.lof *.ilg *.idx *.ind *.out *.log *.exa
del /Q *.nav *.snm *.bbl *.blg *.spl *.lot *.bak *~ *.dvi *.ps
set ARTICLE=template
latex %ARTICLE%.tex
bibtex %ARTICLE%
latex %ARTICLE%.tex
gbk2uni %ARTICLE%
latex %ARTICLE%.tex
dvipdfm %ARTICLE%.dvi
start "" "C:\Program Files\SumatraPDF\SumatraPDF.exe" ./%ARTICLE%.pdf

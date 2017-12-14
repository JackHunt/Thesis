
all: clean cleanpdf pdf bib pdf pdf

name=thesis

pdf: *.tex
	pdflatex $(name).tex

bib: *.tex
	pdflatex $(name).tex
	bibtex $(name) 
	pdflatex $(name).tex
	pdflatex $(name).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.brf *.tcp *.toc *.lot *.lof *.gz
	rm -rf auto

cleanpdf:
	rm -f *.pdf


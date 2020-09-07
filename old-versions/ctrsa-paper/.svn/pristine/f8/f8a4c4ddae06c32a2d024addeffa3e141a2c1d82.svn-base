LATEXSRC = paper.tex

all: pdf

pdf:  $(LATEXSRC)
	pdflatex paper
	bibtex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

clean:
	-rm -f *.log *.aux *.blg *.tfm *.log *.dvi *.ps paper.out

clean_all:
	-rm -f *.log *.aux *.bbl *.blg *.tfm *.log *.dvi *.ps paper.out paper.pdf *.backup *.tex~ *.bib~

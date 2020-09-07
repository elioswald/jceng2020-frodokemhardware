# main file
PROJ		= main

# files converted for markdown to latex
MDTEXFILES	= # spec.tex

# All latex source files
TEXFILES	= $(PROJ).tex $(MDTEXFILES)

# Bibfile
#BIBFILE		= $(PROJ).bib

# Uses xelatex for additional fonts
$(PROJ).pdf:	$(TEXFILES) $(BIBFILE)
		xelatex $(PROJ)
		bibtex $(PROJ)
		xelatex $(PROJ)
		xelatex $(PROJ)

# Some files are produced from pandoc
%.tex:		%.md
		pandoc -w latex -o $@ $<

# sort the bibliography
bibsort:
		bibtool -s -r bibtool.cfg $(BIBFILE) > new_$(BIBFILE)

# clean does not remove the pdf file result
clean:
		rm -f	*.aux *.dvi *.bbl *.blg *.log *.toc *.lof \
			*.thm *.out $(PROJ).pdf

.SUFFIXES: .tex .pdf
OBJS= bsu-thesis-dissertation-template.pdf bsu-proposal.pdf

.tex.pdf:
	pdflatex --shell-escape -halt-on-error $< > $<.log
	pdflatex --shell-escape -halt-on-error $< > $<.log

all: $(OBJS)

.PHONY: clean
clean:
	-rm *.fls \
		*.fdb_latexmk \
		*.log \
		*.aux \
		*.dvi \
		*.toc \
		*.aux \
		*.lot \
		*.lof \
		*.ps \
		*.out

.PHONY: realclean
realclean:  clean
	-rm $(OBJS)

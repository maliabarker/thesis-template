.SUFFIXES: .tex .pdf
OBJS= bsu-thesis-dissertation-template.pdf bsu-proposal.pdf

.tex.pdf:
	@latexmk -pdf -latexoption=-shell-escape $<

all: $(OBJS)

.PHONY: clean
clean:
	-rm -f *.fls \
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

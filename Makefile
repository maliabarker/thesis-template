.SUFFIXES: .tex .pdf

.tex.pdf:   
	pdflatex --shell-escape -halt-on-error $< > $<.log
	pdflatex --shell-escape -halt-on-error $< > $<.log
	
OBJS= bsu-thesis-dissertation-template.pdf  bsu-proposal.pdf

all:  $(OBJS)

clean:
	/bin/rm -f *.log *.aux *.dvi *.toc *.aux *.lot *.lof *.ps *.out

realclean:  clean
	/bin/rm -f $(OBJS)

.SUFFIXES: .tex .pdf

.tex.pdf:   
	pdflatex --shell-escape -halt-on-error $< > $<.log
	pdflatex --shell-escape -halt-on-error $< > $<.log
	
OBJS= bsu-thesis-project-template.pdf 

all:  $(OBJS)

web:
	zip stylefiles.zip bsu-ms.cls  bsu-thesis-project-template.tex\
	                   bsu-thesis-project-template.pdf figure.pdf mylatex
	scp stylefiles.zip cs:public_html/teaching/handouts/stylefiles.zip

clean:
	/bin/rm -f *.log *.aux *.dvi *.toc *.aux *.lot *.lof *.ps *.out

realclean:  clean
	/bin/rm -f $(OBJS)

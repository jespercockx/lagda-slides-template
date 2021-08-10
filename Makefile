AGDA := agda
LATEXMK := latexmk

ifdef ComSpec
	CP=copy
	MV=move
	RM=del /F /Q
else
	CP=cp
	MV=mv
	RM=rm -rf
endif 

.PHONY: clean

all: slides.pdf

latex/%.tex : %.lagda
	$(AGDA) -i. --latex $<

slides.pdf: latex/slides.tex
	$(LATEXMK) -pdf -f -pdflatex='xelatex -halt-on-error' -cd $<
	$(MV) "latex/slides.pdf" "."

clean:
	$(RM) *.aux *.log *.out *.vrb slides.pdf \
	      *.bbl *.blg *.fdb_latexmk *.toc *.fls *.cut \
	      *.ptb *~ latex/* *.agdai



.SUFFIXES: .tex .pdf

.tex.pdf:
	@pdflatex $<

.PHONY: pdf
pdf: pres.pdf



.PHONY: pdf

.SUFFIXES: .tex .pdf

.tex.pdf:
	@pdflatex $<

pdf: test.pdf

#test.pdf:


SHELL=/bin/sh

BASE := pres

SOURCE := $(BASE).tex
	TARGET := $(BASE).pdf
	FILES := $(wildcard $(BASE).*)

GENERATED := $(patsubst $(SOURCE),  , $(FILES))

.DEFAULT_GOAL := all

.SUFFIXES: .tex .pdf

.tex.pdf:
	@pdflatex $<
	@pdflatex $<

.PHONY: info

info:
	@echo          source: $(SOURCE)

	@echo          target: $(TARGET)
	@echo generated files: $(GENERATED)


.PHONY: all
all: pdf

.PHONY:$(BASE)
pres: pdf
.PHONY: pdf
pdf: clean $(TARGET)



.PHONY: show
show: $(TARGET)
	@$(VIEWER) $(TARGET)

.PHONY: clean
clean:
	@rm -f $(GENERATED)


.DEFAULT_GOAL: all
.PHONY: all
all: pdf

%.pdf: %.md metadata.yaml pandoc.sh references.bib
	./pandoc.sh $< $@

.PHONY: pdf
pdf: $(foreach path,$(wildcard */*.md),$(subst .md,.pdf,$(path)))

.PHONY: clean
clean:
	rm -f */*.pdf
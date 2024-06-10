PATTERN=*.tex
COMPILE_FLAGS=
SOURCES=$(wildcard $(PATTERN))
OUTPUTS=$(SOURCES:.tex=.pdf)

default: build

%.pdf: %.tex
	tectonic $(COMPILE_FLAGS) $<

build: $(OUTPUTS)

.PHONY: clean
clean:
	rm $(OUTPUTS)

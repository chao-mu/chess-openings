PYTHON = python3

all: dist/a.tsv dist/b.tsv dist/c.tsv dist/d.tsv dist/e.tsv

deps:
	pip install .

dist/%.tsv: %.tsv bin/gen.py
	mkdir -p dist
	$(PYTHON) bin/gen.py $< > $@

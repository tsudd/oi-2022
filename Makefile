DIST_DIR = dist

LATEXMK = latexmk
LATEXMK_FLAGS = -outdir=${DIST_DIR}

all: style build

build:
	$(LATEXMK) -pdf $(LATEXMK_FLAGS) main.tex </dev/null

style:
	bash style.sh

clean: 
	$(LATEXMK) -c -outdir=dist

distclean: clean
	rm -f ./dist/main.pdf
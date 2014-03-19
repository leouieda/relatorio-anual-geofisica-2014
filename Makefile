IPYNB=phd-report-2014

all: pdf

pdf: $(IPYNB).pdf

$(IPYNB).pdf: $(IPYNB).ipynb
	ipython nbconvert --to latex --SphinxTransformer.use_headers=False $<
	pdflatex $(IPYNB).tex
	pdflatex $(IPYNB).tex
	pdflatex  $(IPYNB).tex

clean:
	rm -rf $(IPYNB).idx $(IPYNB).md $(IPYNB).aux $(IPYNB).out $(IPYNB)_files \
		$(IPYNB).log $(IPYNB).tex $(IPYNB).pdf


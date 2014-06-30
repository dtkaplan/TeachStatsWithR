all: Master-Core.pdf

Master-Core.pdf: Master-Core.tex 
	pdflatex Master-Core
	bibtex Master-Core
	makeindex Master-Core
	pdflatex Master-Core

Master-Core.tex: Master-Core.Rnw Core.Rnw
	knitr Master-Core.Rnw
	
	

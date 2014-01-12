all: Master-Internet.pdf

Master-Internet.pdf: Master-Internet.tex 
	pdflatex Master-Internet
	bibtex Master-Internet
	pdflatex Master-Internet

Master-Internet.tex: Master-Internet.Rnw Internet.Rnw
	knitr Master-Internet.Rnw
	
	

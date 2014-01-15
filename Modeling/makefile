all: Master-Modeling.pdf

Master-Modeling.pdf: Master-Modeling.tex 
	pdflatex Master-Modeling
	bibtex Master-Modeling
	pdflatex Master-Modeling

Master-Modeling.tex: Master-Modeling.Rnw Multivariable.Rnw
	knitr Master-Modeling.Rnw
	
	

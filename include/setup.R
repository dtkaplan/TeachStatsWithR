
## @knitr setup
#setCacheDir("cache")
require(grDevices) 
require(datasets) 
require(stats) 
require(lattice)
require(grid) 
# require(fastR)	# commented out by NH on 7/12/2012
require(mosaic) 
trellis.par.set(theme=col.mosaic(bw=FALSE))
trellis.par.set(fontsize=list(text=9))
options(keep.blank.line=FALSE) 
options(width=60)
require(vcd)
require(knitr)
opts_chunk$set(  tidy=TRUE,
			     size='small',
                 dev="pdf",
                 fig.path="figures/fig-",  
                 fig.width=3, fig.height=2,
                 fig.align="center",
                 fig.show="hold",
                 comment=NA)
knit_hooks$set(chunk=function(x,options){
	vshift <- options$vshift
    if (is.null(vshift)) vshift <- "0ex"
	return(paste("%% Using custom chunk hook function", 
		  paste("\\vspace*{",vshift,"}%", sep=""),
		  "\\begin{knitrout}%",
	      "\\definecolor{shadecolor}{rgb}{0.9, 0.9, 0.9}\\color{fgcolor}%",
		  "\\begin{kframe}%",
          sub("\\n$","",x), 
         "\\end{kframe}%",
		 "\\end{knitrout}%",
		  paste("\\vspace*{",vshift,"}", sep=""),
		 sep="\n"
		 ))
})

knit_hooks$set(output=function(x,options) {
	   vshift <- options$vshift
	   if (is.null(vshift)) vshift <- "0ex"
	   return(paste("%% Using custom output hook function", 
			 paste("\\vspace*{",vshift,"}", sep=""),
			 "\\begin{verbatim}",
			  sub("\\n$","",x), 
			 "\\end{verbatim}%",
			 paste("\\vspace*{",vshift,"}", sep=""),
			  sep="\n" ))
})

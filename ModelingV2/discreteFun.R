# Example

# makeDiscreteFun( "golf"=7, "fus"=8)
# Let any expression be on the RHS
# pull out all variable names and make the resulting function 
# take those as arguments

eval(parse(text=as.character(substitute(b))[3]),list(x=2,y=10))
[1] TRUE
Browse[1]> class(a)
[1] "numeric"
Browse[1]> a
[1] 7
Browse[1]> class(b)
Error: object 'x' not found
Browse[1]> class(substitute(b))
[1] "<-"
Browse[1]> class(substitute(a ~ 3))
[1] "call"
Browse[1]> class(substitute(a))
[1] "<-"


# Any of these will work
# 
# fish := 7 + 3*x
# fish == 7 + 3*x
# fish <- 7 + 3*x
# return a function that's already vectorized.
makeDiscreteFun <- function(a,b,c,d){
  browser()
  Expressions <- list(...)
  
  browser()
  3+4
}
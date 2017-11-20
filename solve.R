library(dplyr)
source('primatives.R')

orders <- c('fgh', 'fhg', 'gfh', 'hfg', 'hgf')
operations <- c('add', 'subtract', 'multiply', 'divide')
parameters <- list(c(3,3,8,8), c(3,8,3,8), c(3,8,8,3), c(8,3,3,8), c(8,3,8,3), c(8,8,3,3))
functions <- expand.grid(my_order=orders, f=operations, g=operations, h=operations, inputs=parameters)
my_apply <- function(df) {
	with(df, {do.call(my_order, c(as.name(f), as.name(g), as.name(h), inputs))})
}
functions <- cbind(functions, output=apply(functions,1,my_apply))
print(filter(functions, abs(output-24) < .001))
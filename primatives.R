add <- function (a, b) {
	a+b
}

subtract <- function (a, b) {
	a-b
}

multiply <- function (a,b) {
	a*b
}

divide <- function (a,b) {
	a/b
}

fgh <- function (f, g, h, a, b, c, d) {
	f(a, g(b, h(c,d)))
}

fhg <- function (f, g, h, a, b, c, d) {
	f(a, h(g(b, c), d))
}

gfh <- function (f, g, h, a, b, c, d) {
	g(f(a,b), h(c,d))
}

ghf <- gfh

hfg <- function (f, g, h, a, b, c, d) {
	h(f(a,g(b,c)), d)
}

hgf <- function (f, g, h, a, b, c, d) {
	h(g(f(a,b), c), d)
}
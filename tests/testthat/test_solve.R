source('../../primatives.R')

test_that('add works', {
	expect_that(add(1,1), equals(2))
})

test_that('subtract works', {
	expect_that(subtract(2,1), equals(1))
})

test_that('multiply works', {
	expect_that(multiply(2,3), equals(6))
})

test_that('divide works', {
	expect_that(divide(3,2), equals(1.5))
})

test_that('fgh works', {
	expect_that(fgh(subtract, subtract, subtract, 10, 1, 1, 1), equals(9))
})

test_that('fhg works', {
	expect_that(fhg(subtract, subtract, subtract, 10, 1, 1, 1), equals(11))
})

test_that('gfh works', {
	expect_that(gfh(subtract, subtract, subtract, 10, 3, 2, 1), equals(6))
})

test_that('ghf works', {
	expect_that(ghf(subtract, subtract, subtract, 10, 3, 2, 1), equals(6))
})

test_that('hfg works', {
	expect_that(hfg(subtract, subtract, subtract, 10, 3, 2, 1), equals(8))
})

test_that('hgf works', {
	expect_that(hgf(subtract, subtract, subtract, 10, 3, 2, 1), equals(4))
})
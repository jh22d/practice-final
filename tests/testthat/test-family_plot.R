source(here('R/family_plot.R'))

test_data = tibble(x=c(1,5,3,4,5),
                      a = c(-1,-3,5,6,7),
                      y = c('Y', 'N', 'Y', 'Y', 'Y'))
test_correct_plt = family_plot(test_data, x, a, 'title', 'x', 'Counts')

testthat::test_that("Test if y axis has label 'Counts'", {
  expect_identical(test_correct_plt$labels$y, "Counts")
})
testthat::test_that("Test if x axis has label 'x'", {
  expect_identical(test_correct_plt$labels$x, 'x')
})
testthat::test_that("Test if the plot is being rendered", {
  expect_error(print(test_correct_plt), NA)
})


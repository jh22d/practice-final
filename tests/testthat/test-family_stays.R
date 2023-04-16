source(here('R/family_stays.R'))
test_correct_df = family_stays(no_of_adults, no_of_children, no_of_weekend_nights, no_of_week_nights, booking_status)

testthat::test_that("`family_stays` should return a data frame", {
  testthat::expect_equal(2559, nrow(test_correct_df))
})

testthat::test_that("`family_stays` should call an exirting column name", {
  testthat::expect_error(
    family_stays(no_of_adults, no_of_children, 
                 no_of_weekend_nights, 
                 a, 
                 booking_status))
})

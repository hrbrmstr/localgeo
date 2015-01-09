context("basic functionality")
test_that("we can do something", {

  expect_that(geocode(c("Portland", "Berwick", "Alfred"), "ME"), is_a("data.frame"))

})

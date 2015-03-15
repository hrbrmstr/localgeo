localgeo is a package that coverts a US City+State to lon/lat. This is a ridiculously small package and is really just a function interface over the `cities.rda` file in the `data` directory. So, just grab that if you want to wrap your own work around it.

It was made in response to <http://stackoverflow.com/a/27868207/1457051> since there's no reason to waste bandwidth or cycles on an internet API when you can have the data locally.

The following functions are implemented:

-   `geocode` : converts US city/states to lon/lat

### News

-   Version 1.0 released
-   Version 1.1 released - speedup

### Installation

``` r
devtools::install_github("hrbrmstr/localgeo")
```

### Usage

``` r
library(localgeo)

# current verison
packageVersion("localgeo")
```

    ## [1] '1.1'

``` r
print(geocode("Eliot", "ME"))
```

    ##         lon      lat
    ## 1 -70.79925 43.15355

``` r
print(geocode(city=c("Houston", "Pittsburgh"),
              state=c("TX", "PA")))
```

    ##         lon      lat
    ## 1 -95.36400 29.76376
    ## 2 -79.99538 40.44091

### Test Results

``` r
library(localgeo)
library(testthat)

date()
```

    ## [1] "Sun Mar 15 07:10:05 2015"

``` r
test_dir("tests/")
```

    ## basic functionality : .

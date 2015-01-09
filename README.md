localgeo is a package that coverts a US City+State to lon/lat. This is a ridiculously small package and is really just a function interface over the `cities.rda` file in the `data` directory. So, just grab that if you want to wrap your own work around it.

It was made in response to <http://stackoverflow.com/a/27868207/1457051> since there's no reason to waste bandwidth or cycles on an internet API when you can have the data locally.

The following functions are implemented:

-   `geocode` : converts US city/states to lon/lat

### News

-   Version 0.1 released

### Installation

``` r
devtools::install_github("hrbrmstr/localgeo")
```

### Usage

``` r
library(localgeo)
```

    ## Loading required package: dplyr
    ## 
    ## Attaching package: 'dplyr'
    ## 
    ## The following object is masked from 'package:stats':
    ## 
    ##     filter
    ## 
    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
# current verison
packageVersion("localgeo")
```

    ## [1] '1.0'

``` r
print(geocode("Eliot", "ME"))
```

    ##             lon      lat  city state
    ## Eliot -70.79925 43.15355 Eliot    ME

``` r
print(geocode(city=c("Houston", "Pittsburgh"),
              state=c("TX", "PA")))
```

    ##                  lon      lat       city state
    ## Houston    -95.36400 29.76376    Houston    TX
    ## Pittsburgh -79.99538 40.44091 Pittsburgh    PA

### Test Results

``` r
library(localgeo)
library(testthat)

date()
```

    ## [1] "Fri Jan  9 16:22:18 2015"

``` r
test_dir("tests/")
```

    ## basic functionality : .

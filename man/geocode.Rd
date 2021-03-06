% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/localgeo.R
\name{geocode}
\alias{geocode}
\title{Geocode a US City & State to a lon/lat pair}
\usage{
geocode(city, state)
}
\arguments{
\item{city}{vector of cities to geocode}

\item{state}{vector of states to geocode}
}
\value{
a \code{data.frame} of successfully geocoded entries
}
\description{
Using data from the shapefile in \url{http://www.mapcruzin.com/fcc-wireless-shapefiles/cities-towns.zip}
this functon geocodes one more more city/state combos into lon/lat pairs. Since it
uses \code{mapply} for the vectorization, you can either pass in equal length vectors
for \code{city} and \code{state} or pass in a vector of cities/towns in \code{city} and
a single state in \code{state}. See the examples if that's confusing.
}
\examples{
\dontrun{
geocode("Berwick", "ME")
geocode(c("Portland", "Berwick", "Alfred"), "ME")
geocode(city=c("Baltimore", "Pittsburgh", "Houston"),
        state=c("MD", "PA", "TX"))
}
}


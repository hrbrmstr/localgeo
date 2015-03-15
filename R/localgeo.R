.localgeo <- new.env()

#' Geocode a US City & State to a lon/lat pair
#'
#' Using data from the shapefile in \url{http://www.mapcruzin.com/fcc-wireless-shapefiles/cities-towns.zip}
#' this functon geocodes one more more city/state combos into lon/lat pairs. Since it
#' uses \code{mapply} for the vectorization, you can either pass in equal length vectors
#' for \code{city} and \code{state} or pass in a vector of cities/towns in \code{city} and
#' a single state in \code{state}. See the examples if that's confusing.
#'
#' @param city vector of cities to geocode
#' @param state vector of states to geocode
#' @return a \code{data.frame} of successfully geocoded entries
#' @export
#' @examples \dontrun{
#' geocode("Berwick", "ME")
#' geocode(c("Portland", "Berwick", "Alfred"), "ME")
#' geocode(city=c("Baltimore", "Pittsburgh", "Houston"),
#'         state=c("MD", "PA", "TX"))
#' }
geocode <- function(city, state) {

  data.frame(city=as.character(city), state=as.character(state), stringsAsFactors=FALSE) %>%
    left_join(.localgeo$geo_db, by=c("city", "state")) %>%
    select(lon, lat)

}


.onAttach <- function(libpath, pkgname) {
  load(system.file("data/cities.rda", package="localgeo"), .localgeo)
}


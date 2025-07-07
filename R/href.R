
#' Get useful openair links
#'
#' Returns URLs and, optionally, opens them in a browser.
#'
#' @param open If `TRUE` will use [utils::browseURL()] to open the link.
#'
#' @param package For [href_pkgdown()]; which package to link to.
#'
#' @inheritDotParams utils::browseURL -url
#'
#' @returns Always returns the URL, albeit invisibly if `open = TRUE`.
#'
#' @rdname href
#' @export
href_book <- function(open = FALSE, ...) {
  x <- "https://openair-project.github.io/book/"
  if (open) {
    utils::browseURL(x, ...)
    return(invisible(x))
  } else {
    x
  }
}

#' @rdname href
#' @export
href_github <- function(open = FALSE, ...) {
  x <- "https://github.com/openair-project"
  if (open) {
    utils::browseURL(x, ...)
    return(invisible(x))
  } else {
    x
  }
}

#' @rdname href
#' @export
href_pkgdown <- function(package = "openair", open = FALSE, ...) {
  x <- file.path("https://openair-project.github.io", package)
  if (open) {
    utils::browseURL(x, ...)
    return(invisible(x))
  } else {
    x
  }
}

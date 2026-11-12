# Get useful openair links

Returns URLs and, optionally, opens them in a browser.

## Usage

``` r
href_book(open = FALSE, ...)

href_github(open = FALSE, ...)

href_pkgdown(package = "openair", open = FALSE, ...)
```

## Arguments

- open:

  If `TRUE` will use
  [`utils::browseURL()`](https://rdrr.io/r/utils/browseURL.html) to open
  the link.

- ...:

  Arguments passed on to
  [`utils::browseURL`](https://rdrr.io/r/utils/browseURL.html)

  `browser`

  :   a non-empty character string giving the name of the program to be
      used as the HTML browser. It should be in the PATH, or a full path
      specified. Alternatively, an R function to be called to invoke the
      browser.

      Under Windows `NULL` is also allowed (and is the default), and
      implies that the file association mechanism will be used.

  `encodeIfNeeded`

  :   Should the URL be encoded by
      [`URLencode`](https://rdrr.io/r/utils/URLencode.html) before
      passing to the browser? This is not needed (and might be harmful)
      if the `browser` program/function itself does encoding, and can be
      harmful for `file://` URLs on some systems and for `http://` URLs
      passed to some CGI applications. Fortunately, most URLs do not
      need encoding.

- package:

  For `href_pkgdown()`; which package to link to.

## Value

Always returns the URL, albeit invisibly if `open = TRUE`.

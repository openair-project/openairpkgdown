# Theme demo

This page exists to preview the **openairpkgdown** theme. It isn’t
documentation: it puts every element the theme styles on one page. To
preview a package’s colour, change `primary` in this repo’s
`_pkgdown.yml` and rebuild with
[`pkgdown::build_site()`](https://pkgdown.r-lib.org/reference/build_site.html).

The lead paragraph above should be slightly larger and softer than body
text. Here is an [inline
link](https://openair-project.github.io/openair/), some `inline code`,
and a linked function name:
[`summary()`](https://rdrr.io/r/base/summary.html).

## Code

A chunk with source and output:

``` r

x <- c(12.1, 18.4, 22.9, 31.0, 27.5, 15.2)
summary(x)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>   12.10   16.00   20.65   21.18   26.35   31.00
```

A longer chunk, to check scrolling and syntax highlighting:

``` r

daily_mean <- function(data, pollutant = "no2", na.rm = TRUE) {
  # group by date and take the mean of a pollutant
  dates <- as.Date(data$date)
  tapply(data[[pollutant]], dates, mean, na.rm = na.rm)
}

dat <- data.frame(
  date = rep(seq(as.POSIXct("2024-01-01"), by = "6 hours", length.out = 8)),
  no2 = c(41, 38, 52, 47, 35, 33, 44, 50)
)
daily_mean(dat)
#> 2024-01-01 2024-01-02 
#>       44.5       40.5
```

Messages, warnings and errors:

``` r

message("Downloading data from the AURN...")
#> Downloading data from the AURN...
warning("3 sites returned no data.")
#> Warning: 3 sites returned no data.
stop("`pollutant` must be a character vector.")
#> Error:
#> ! `pollutant` must be a character vector.
```

## Plots

``` r

set.seed(1)
no2 <- 30 + 15 * sin(seq(0, 4 * pi, length.out = 48)) + rnorm(48, sd = 4)
plot(no2, type = "l", lwd = 2, xlab = "Hour", ylab = "NO2 (ug/m3)")
```

![A line chart of hourly NO2 concentrations over two
days.](theme-demo_files/figure-html/unnamed-chunk-5-1.png)

## Text elements

### Lists

- Data analysis: openair, openairmaps, deweather
- Data access: worldmet, euroaq, ukaq
  - Nested item one
  - Nested item two

1.  Import data
2.  Clean and check it
3.  Analyse and plot

### Blockquotes

> Air pollution is the largest environmental risk to public health in
> the UK.

### Callouts

**Note:** an informational callout.

**Warning:** this function is deprecated and will be removed in the next
release.

**Important:** a danger callout.

### Horizontal rule

Text above the rule.

------------------------------------------------------------------------

Text below the rule.

## Tables

A Markdown table:

| Package     | Focus         | Colour    |
|-------------|---------------|-----------|
| openair     | Data analysis | `#4169e1` |
| openairmaps | Data analysis | `#0f766e` |
| deweather   | Data analysis | `#7c3aed` |
| worldmet    | Data access   | `#3a7d22` |
| euroaq      | Data access   | `#b45309` |
| ukaq        | Data access   | `#c8102e` |

A table from
[`knitr::kable()`](https://rdrr.io/pkg/knitr/man/kable.html):

``` r

knitr::kable(head(airquality))
```

| Ozone | Solar.R | Wind | Temp | Month | Day |
|------:|--------:|-----:|-----:|------:|----:|
|    41 |     190 |  7.4 |   67 |     5 |   1 |
|    36 |     118 |  8.0 |   72 |     5 |   2 |
|    12 |     149 | 12.6 |   74 |     5 |   3 |
|    18 |     313 | 11.5 |   62 |     5 |   4 |
|    NA |      NA | 14.3 |   56 |     5 |   5 |
|    28 |      NA | 14.9 |   66 |     5 |   6 |

## Headings

### Third-level heading

Some text under a third-level heading.

#### Fourth-level heading

Some text under a fourth-level heading.

## A final section

This last section gives the table of contents enough entries to show the
active-item highlight while you scroll.

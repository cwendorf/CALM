# Contrast Algorithms for Linear Models

## An R Package to Create and Interpret Contrast Codes

### Overview

**CALM** is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and a modification of Venables's `codingMatrices` package. In addition to contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

### Installation

This package is not currently on CRAN, but can be installed from GitHub:

``` r
install.packages("devtools")
devtools::install_github("cwendorf/CALM")
library(CALM)
```

If you do not wish a full install, the latest functions can be sourced directly from GitHub:

```r
source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")
```

### Citation

Wendorf, C.A. (2021). *CALM: Contrast Algorithms for Linear Models* [R Package]. [https://cwendorf.github.io/CALM/](https://cwendorf.github.io/CALM/)

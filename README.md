# [`CALM`](https://github.com/cwendorf/CALM/)

## Contrast Algorithms for Linear Models

[![Minimal R Version](https://img.shields.io/badge/R%3E%3D-3.6.2-blue?style=for-the-badge)](https://cran.r-project.org/)
[![GitHub Release](https://img.shields.io/github/v/release/cwendorf/CALM?style=for-the-badge)](https://github.com/cwendorf/CALM/releases/latest)
[![Project Status](https://img.shields.io/badge/Status-Inactive-orange?style=for-the-badge)](https://www.repostatus.org/#inactive)

### Overview

`CALM` is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and inspired by Venables's `codingMatrices` package, but it includes codes not available in other packages. In addition to providing contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

### Installation

This package is not currently on CRAN, but can be installed and loaded using these R commands

``` r
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cwendorf/CALM")
library(CALM)
```

If you do not wish a full install, the latest functions can be made available using this R command:

```r
source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")
```

### Usage

This package includes the following documentation:

- [Introduction](./docs/README.md):  Overview of the package and links to all resources.
- [Reference](./docs/man/README.md): Documentation for all exported functions, including usage, arguments, and return values.
- [Articles](./docs/vignettes/README.md): Examples demonstrating how to use the package.

### Citation

Wendorf, C.A. (2021). *CALM: Contrast Algorithms for Linear Models* [R Package]. [https://github.com/cwendorf/CALM](https://github.com/cwendorf/CALM)

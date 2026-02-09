
# `CALM` 

## Contrast Algorithms for Linear Models

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

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

This package contains a set of materials to demonstrate its use: 

- [Introduction](./docs/README.md): Introduction to the package
- [Extracting Regression Codes](./docs/extractingRegressionCodes.md): Examples of extracting from traditional regression codes
- [Extracting Base Codes](./docs/extractingBaseCodes.md): Examples of extracting from R Base contrast codes
- [Producing Common Codes](./docs/producingCommonCodes.md): Examples of producing commonly specified contrast codes 
- [Producing Custom Codes](./docs/producingCustomCodes.md): Examples of producing custom contrast codes
- [Using Common Codes](./docs/usingCommonCodes.md): Examples using the package's built-in contrast codes
- [Using Custom Codes](./docs/usingCustomCodes.md): Examples using custom contrast codes

### Contact Me

- GitHub Issues: [https://github.com/cwendorf/CALM/issues](https://github.com/cwendorf/CALM/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://github.com/cwendorf](https://github.com/cwendorf)

### Citation

Wendorf, C.A. (2021). *CALM: Contrast Algorithms for Linear Models* [R Package]. [https://github.com/cwendorf/CALM](https://github.com/cwendorf/CALM)

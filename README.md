
# `CALM` 

## Contrast Algorithms for Linear Models

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

**CALM** is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and inspired by Venables's **codingMatrices** package, but it includes codes not available in other packages. In addition to providing contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

### Installation

This package is not currently on CRAN, but can be installed and loaded using these R commands

``` r
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cwendorf/CALM")
library(CALM)
```

If you do not wish a full install, the latest functions can be made available using these R commands:

```r
source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")
```

### Usage

The [Tutorials for CALM](./docs/README.md) provide basic documentation and examples of:

- Extracting hypotheses from existing coding patterns
- Producing codes from contrast hypotheses
- Using predefined and custom codes in linear models

### Contact Me

- GitHub Issues: [https://github.com/cwendorf/CALM/issues](https://github.com/cwendorf/CALM/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://github.com/cwendorf](https://github.com/cwendorf)

### Citation

Wendorf, C.A. (2021). *CALM: Contrast Algorithms for Linear Models* [R Package]. [https://github.com/cwendorf/CALM](https://github.com/cwendorf/CALM)

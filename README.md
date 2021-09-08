<a href="https://cwendorf.github.io/CALM">
<img src="logo.png" height="60px;" align="left;">
</a>

# Contrast Algorithms for Linear Models

## An R Package to Create and Interpret Contrast Codes

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

`CALM` is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and a modification of Venables's `codingMatrices` package. In addition to contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

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

### Usage

Basic documentation and examples are available:  
[https://cwendorf.github.io/CALM/](https://cwendorf.github.io/CALM/)

- Coded and examples for extracting hypotheses from existing coding patterns
- Code and examples for producing codes from contrast hypotheses
- Coe and examples for using custom and predefined codes in linear models

### Citation

Wendorf, C.A. (2021). *CALM: Contrast Algorithms for Linear Models* [R Package]. [https://cwendorf.github.io/CALM/](https://cwendorf.github.io/CALM/)

### Contact Me

- GitHub Issues: [https://github.com/cwendorf/CALM/issues](https://github.com/cwendorf/CALM/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://cwendorf.github.io](https://cwendorf.github.io)

# [`CALM`](https://github.com/cwendorf/CALM/)

## Overview

`CALM` is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and inspired by Venables's `codingMatrices` package, but it includes codes not available in other packages. In addition to providing contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

- [Extracting Contrast Codes](#extracting-contrast-codes)
- [Producing Contrast Codes](#producing-contrast-codes)
- [Using Contrast Codes](#using-contrast-codes)

------------------------------------------------------------------------

### Extracting Contrast Codes

The package can take existing coding patterns and decode them to determine the hypotheses being tested.

- [Extracting Regression Codes](./extractingRegressionCodes.md) - Examples of extracting from traditional regression codes
- [Extracting Base Codes](./extractingBaseCodes.md) - Examples of extracting from R Base contrast codes

### Producing Contrast Codes

The package can take a set of linear contrasts to be tested and produce coding schemes.

- [Producing Common Codes](./producingCommonCodes.md) - Examples of producing commonly specified contrast codes
- [Producing Custom Codes](./producingCustomCodes.md) - Examples of producing custom contrast codes

### Using Contrast Codes

The package can be used in conjunction with R's analytical strategies (like the Linear Model) to test hypotheses for real data problems.

- [Using Common Codes](./usingCommonCodes.md) - Examples using the package's built-in contrast codes
- [Using Custom Codes](./usingCustomCodes.md) - Examples using custom contrast codes

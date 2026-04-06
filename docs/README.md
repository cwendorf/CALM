# [`CALM`](https://github.com/cwendorf/CALM/)

## Introduction

`CALM` is an R package for creating and interpreting contrast codes for linear models. It is an extension of the built-in contrast specifications in R and inspired by Venables's `codingMatrices` package, but it includes codes not available in other packages. In addition to providing contrast specifications, it includes functions for directly converting hypothesized differences (contrasts) into linear model codes (and vice versa).

- [Overview](#overview)
- [Resources](#resources)

---

### Overview

Contrast coding translates categorical predictors into numeric columns that linear models can estimate. Different coding schemes represent different research questions: some compare each level to a reference group, some test adjacent differences, and others capture trends or repeated structures. The coding choice affects how coefficients are interpreted, so selecting codes that match the intended hypothesis is critical for clear statistical conclusions.

`CALM` is useful because it centralizes a broad set of coding systems and makes the mapping between conceptual contrasts and model-ready codes explicit. This helps users avoid manual matrix construction, reduces coding errors, and makes analyses easier to communicate and reproduce.

### Resources

- [Reference](./man/README.md): Documentation for all exported functions, including usage, arguments, return values, and examples.
- [Articles](./vignettes/README.md): Examples demonstrating how to use the package for ccontrast coding.

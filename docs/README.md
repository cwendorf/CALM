# [`CALM`](https://github.com/cwendorf/CALM/)

## Introduction

`CALM` helps translate research hypotheses about group differences into contrast codes for linear models. It extends R's built-in contrast specifications with additional coding systems and tools to convert between hypothesized contrasts and model-ready codes.

- [Overview](#overview)
- [Resources](#resources)

---

### Overview

Contrast coding translates categorical predictors into numeric columns that linear models can estimate. Different coding schemes represent different research questions: some compare each level to a reference group, some test adjacent differences, and others capture trends or repeated structures. The coding choice affects how coefficients are interpreted, so selecting codes that match the intended hypothesis is critical for clear statistical conclusions.

`CALM` is useful because it centralizes a broad set of coding systems and makes the mapping between conceptual contrasts and model-ready codes explicit. This helps users avoid manual matrix construction, reduces coding errors, and makes analyses easier to communicate and reproduce.

### Resources

- [Reference](./man/README.md): Documentation for all exported functions, including usage, arguments, return values, and examples.
- [Articles](./vignettes/README.md): Examples demonstrating how to use the package for contrast coding.

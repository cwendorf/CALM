# [`CALM`](https://github.com/cwendorf/CALM)

## Helmert Forward Contrast Coding

### Description

Generates forward Helmert contrast coding.
This contrast compares each level to the mean of the subsequent levels.

### Usage

```r
helmert.forward(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector specifying the level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Helmert (Forward)
- R Equivalent: none
- SPSS Equivalent: helmert
- MR Equivalent: none
- codingMatrices Equivalent: helmert_forward

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


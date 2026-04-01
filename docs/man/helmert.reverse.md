# [`CALM`](https://github.com/cwendorf/CALM)

## Helmert Reverse Contrast Coding

### Description

Generates reverse Helmert contrast coding.
This contrast compares each level to the mean of the preceding levels.

### Usage

```r
helmert.reverse(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector specifying the level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Helmert (Reverse)
- R Equivalent: helmert
- SPSS Equivalent: difference
- MR Equivalent: none
- codingMatrices Equivalent: helmert

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


# [`CALM`](https://github.com/cwendorf/CALM)

## Deviation Last Contrast Coding

### Description

Generates deviation contrast coding with the last level as the reference.
This contrast compares each level to the overall mean deviation from the last level.
This coding is equivalent to R's base contr.sum.

### Usage

```r
deviation.last(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector specifying the level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .Diag().

### Details

- Contrast Type: Deviation (Last)
- R Equivalent: contr.sum
- SPSS Equivalent: deviation
- MR Equivalent: effect
- codingMatrices Equivalent: deviation

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


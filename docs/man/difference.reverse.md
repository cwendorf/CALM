# [`CALM`](https://github.com/cwendorf/CALM)

## Difference Reverse Contrast Coding

### Description

Generates reverse difference contrast coding.
This type of coding compares each level to the previous level in a reverse manner.

### Usage

```r
difference.reverse(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector specifying the level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Difference (Reverse)
- R Equivalent: none
- SPSS Equivalent: none
- MR Equivalent: none
- codingMatrices Equivalent: diff

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


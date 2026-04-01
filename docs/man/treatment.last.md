# [`CALM`](https://github.com/cwendorf/CALM)

## Treatment (Last) Contrast Coding

### Description

Generates treatment contrast coding using the last level as the baseline.

### Usage

```r
treatment.last(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector of level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Treatment (Last)
- R Equivalent: contr.SAS
- SPSS Equivalent: simple (last)
- MR Equivalent: dummy
- codingMatrices Equivalent: none

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


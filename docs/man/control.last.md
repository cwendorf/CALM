# [`CALM`](https://github.com/cwendorf/CALM)

## Control Last Contrast Coding

### Description

Generates contrast coding with the last level as the control group.
This type of coding is useful for comparing all other groups against the last (reference) level.

### Usage

```r
control.last(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a character vector specifying the level names.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns an identity matrix.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Control (Last)
- R Equivalent: none
- SPSS Equivalent: none
- MR Equivalent: none
- codingMatrices Equivalent: control_last

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is prepended to the matrix.


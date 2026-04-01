# [`CALM`](https://github.com/cwendorf/CALM)

## Polynomial Contrast Coding

### Description

Generates orthogonal polynomial contrast coding.
This contrast is used to test for polynomial trends (linear, quadratic, cubic, etc.) across ordered factor levels.

### Usage

```r
polynomial(n, scores = 1:n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
```

### Arguments

- **`n`**: An integer specifying the number of levels, or a vector specifying the level names.
- **`scores`**: Numeric vector of scores to assign to each level; defaults to equally spaced integers.
- **`intercept`**: Logical. If TRUE, includes a column for the intercept.
- **`contrasts`**: Logical. If TRUE, returns contrast codes; if FALSE, returns the full matrix including intercept.
- **`sparse`**: Logical. If TRUE, returns the matrix in sparse form using .asSparse().

### Details

- Contrast Type: Polynomial
- R Equivalent: contr.poly
- SPSS Equivalent: polynomial
- MR Equivalent: polynomial
- codingMatrices Equivalent: poly

### Value

A contrast matrix of size n x (n - 1) (or n x n if contrasts = FALSE),
optionally in sparse format. If intercept = TRUE, a column of 1s is included.


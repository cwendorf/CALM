# [`CALM`](https://github.com/cwendorf/CALM)

## Encode Hypothesis Matrix into Coding Matrix

### Description

Transforms a hypothesis matrix L into its corresponding coding matrix.

### Usage

```r
calm.encode(L, digits = 4)
```

### Arguments

- **`L`**: A numeric hypothesis matrix (typically of size g x h where g is the number of groups).
- **`digits`**: Integer. Number of decimal places to round the result. Defaults to 4.

### Details

- This function uses the Moore–Penrose inverse of L to compute the coding matrix.
- It provides a contrast matrix that can be used for statistical model estimation.

### Value

A numeric matrix representing the coded design matrix. Row names are labeled "GROUP #", and column names as "CODE #".


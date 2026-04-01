# [`CALM`](https://github.com/cwendorf/CALM)

## Decode Coding Matrix into Hypothesis Matrix

### Description

Recovers the hypothesis matrix from a coded contrast matrix.

### Usage

```r
calm.decode(X, digits = 4)
```

### Arguments

- **`X`**: A coded matrix (typically output from calm.encode).
- **`digits`**: Integer. Number of decimal places to round the result. Defaults to 4.

### Details

- This function inverts the encoding process via least-squares pseudoinverse.
- This reconstructs a hypothesis matrix from the coding matrix.

### Value

A numeric matrix representing the decoded hypothesis matrix. Row names are labeled "HYPOTH #", and column names as "GROUP #".


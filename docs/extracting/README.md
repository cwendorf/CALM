
## Extracting Hypotheses from Regression Codes

### Overview

Using the procedures outlined in Wendorf (2004), `CALM` takes existing multiple regression coding patterns and decodes them to determine the hypotheses being tested. In the examples below, the matrix input shows the coding pattern (columns represent coded vectors, rows represent the groups being represented). The obtained output shows the linear contrasts hypotheses being represented (the rows represent the weights for the contrast, the columns represent the groups being compared).

### Example: Dummy Coding


```r
ex_dummy = matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_dummy)
```

```
##          GROUP 1 GROUP 2 GROUP 3
## HYPOTH 1       0       0       1
## HYPOTH 2       1       0      -1
## HYPOTH 3       0       1      -1
```

### Example: Effect Coding


```r
ex_effect = matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_effect)
```

```
##          GROUP 1 GROUP 2 GROUP 3
## HYPOTH 1    0.33    0.33    0.33
## HYPOTH 2    0.67   -0.33   -0.33
## HYPOTH 3   -0.33    0.67   -0.33
```

### Example: Repeated Coding


```r
ex_repeated = matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_repeated)
```

```
##          GROUP 1 GROUP 2 GROUP 3
## HYPOTH 1       1       0       0
## HYPOTH 2      -1       1       0
## HYPOTH 3       0      -1       1
```

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 

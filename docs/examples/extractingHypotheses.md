
## Extracting Hypotheses from Codes

### Overview

Following Wendorf (2004), `CALM` can take existing coding patterns and decode them to determine the hypotheses being tested. In the examples below, the matrix input shows the coding pattern (columns represent coded vectors, rows represent the groups being represented). The obtained output shows the linear contrasts hypotheses being represented (the rows represent the weights for the contrast, the columns represent the groups being compared).

### Extracting from Regression Codes

#### Example: Dummy Coding


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

The intercept is equivalent to the mean of the last group. Remaining parameters represent the difference between each group and the last group. 

#### Example: Effect Coding


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

The intercept is equivalent to the mean of the group means. Remaining parameters represent the difference between each group and the grand mean. The last group is not compared. 

#### Example: Repeated Coding


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

The intercept is equivalent to the mean of the first group. Remaining parameters represent the difference between each group and the previous group. 

### Extracting from R Base Contrast Codes

#### Example: contr.treatment


```r
ex_contr.treatment = cbind(Int=1,contr.treatment(3))
calm.decode(ex_contr.treatment)
```

```
##      1 2 3
## Int  1 0 0
## 2   -1 1 0
## 3   -1 0 1
```

The intercept is equivalent to the mean of the first group. Remaining parameters represent the difference between each group and the first group. 

#### Example: contr.SAS


```r
ex_contr.SAS = cbind(Int=1,contr.SAS(3))
calm.decode(ex_contr.SAS)
```

```
##     1 2  3
## Int 0 0  1
## 1   1 0 -1
## 2   0 1 -1
```

The intercept is equivalent to the mean of the last group. Remaining parameters represent the difference between each group and the last group.

#### Example: contr.sum


```r
ex_contr.sum = cbind(Int=1,contr.sum(3))
calm.decode(ex_contr.sum)
```

```
##         1     2     3
## Int  0.33  0.33  0.33
##      0.67 -0.33 -0.33
##     -0.33  0.67 -0.33
```

The intercept is equivalent to the mean of the group means. Remaining parameters represent the difference between each group and the grand mean. The last group is not compared.

#### Example: contr.helmert


```r
ex_contr.helmert = cbind(Int=1,contr.helmert(3))
calm.decode(ex_contr.helmert)
```

```
##         1     2    3
## Int  0.33  0.33 0.33
##     -0.50  0.50 0.00
##     -0.17 -0.17 0.33
```

The intercept is equivalent to the mean of the group means. Remaining parameters represent the difference between each group and the mean of the subsequent groups. 

#### Example: contr.poly


```r
ex_contr.poly = cbind(Int=1,contr.poly(3))
calm.decode(ex_contr.poly)
```

```
##     GROUP 1 GROUP 2 GROUP 3
## Int    0.33    0.33    0.33
## .L    -0.71    0.00    0.71
## .Q     0.41   -0.82    0.41
```

The intercept is equivalent to the mean of the group means. Remaining parameters represent polynomial trends (linear, quadratic, etc.).

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 

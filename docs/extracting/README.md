
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

### Extracting from R Base Contrast Codes

#### Example: contr.treatment


```r
contr.treatment(3)
```

```
##   2 3
## 1 0 0
## 2 1 0
## 3 0 1
```

```r
calm.decode(contr.treatment(3))
```

```
##   1 2 3
## 2 0 1 0
## 3 0 0 1
```

#### Example: contr.SAS


```r
contr.SAS(3)
```

```
##   1 2
## 1 1 0
## 2 0 1
## 3 0 0
```

```r
calm.decode(contr.SAS(3))
```

```
##   1 2 3
## 1 1 0 0
## 2 0 1 0
```

#### Example: contr.sum


```r
contr.sum(3)
```

```
##   [,1] [,2]
## 1    1    0
## 2    0    1
## 3   -1   -1
```

```r
calm.decode(contr.sum(3))
```

```
##              1     2     3
## HYPOTH 1  0.67 -0.33 -0.33
## HYPOTH 2 -0.33  0.67 -0.33
```

#### Example: contr.helmert


```r
contr.helmert(3)
```

```
##   [,1] [,2]
## 1   -1   -1
## 2    1   -1
## 3    0    2
```

```r
calm.decode(contr.helmert(3))
```

```
##              1     2    3
## HYPOTH 1 -0.50  0.50 0.00
## HYPOTH 2 -0.17 -0.17 0.33
```

#### Example: contr.poly


```r
contr.poly(3)
```

```
##                 .L         .Q
## [1,] -7.071068e-01  0.4082483
## [2,] -7.850462e-17 -0.8164966
## [3,]  7.071068e-01  0.4082483
```

```r
calm.decode(contr.poly(3))
```

```
##    GROUP 1 GROUP 2 GROUP 3
## .L   -0.71    0.00    0.71
## .Q    0.41   -0.82    0.41
```

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 

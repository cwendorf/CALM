
## Using Common Contrast Matrices

### Overview



### Example: Treatment (First) Contrasts


```r
treatment.first(3)
```

```
##   2-1 3-1
## 1   0   0
## 2   1   0
## 3   0   1
```

```r
treatment.first(3,intercept=TRUE)
```

```
##   Int 2-1 3-1
## 1   1   0   0
## 2   1   1   0
## 3   1   0   1
```

```r
calm.decode(treatment.first(3))
```

```
##     1 2 3
## 2-1 0 1 0
## 3-1 0 0 1
```

```r
calm.decode(treatment.first(3,intercept=TRUE))
```

```
##      1 2 3
## Int  1 0 0
## 2-1 -1 1 0
## 3-1 -1 0 1
```

### Example: Treatment (Last) Contrasts


```r
treatment.last(3)
```

```
##   1-3 2-3
## 1   1   0
## 2   0   1
## 3   0   0
```

```r
treatment.last(3,intercept=TRUE)
```

```
##   Int 1-3 2-3
## 1   1   1   0
## 2   1   0   1
## 3   1   0   0
```

```r
calm.decode(treatment.last(3))
```

```
##     1 2 3
## 1-3 1 0 0
## 2-3 0 1 0
```

```r
calm.decode(treatment.last(3,intercept=TRUE))
```

```
##     1 2  3
## Int 0 0  1
## 1-3 1 0 -1
## 2-3 0 1 -1
```

### Example: Deviation (First) Contrasts


```r
deviation.first(3)
```

```
##   MD2 MD3
## 1  -1  -1
## 2   1   0
## 3   0   1
```

```r
deviation.first(3,intercept=TRUE)
```

```
##   Int MD2 MD3
## 1   1  -1  -1
## 2   1   1   0
## 3   1   0   1
```

```r
calm.decode(deviation.first(3))
```

```
##         1     2     3
## MD2 -0.33  0.67 -0.33
## MD3 -0.33 -0.33  0.67
```

```r
calm.decode(deviation.first(3,intercept=TRUE))
```

```
##         1     2     3
## Int  0.33  0.33  0.33
## MD2 -0.33  0.67 -0.33
## MD3 -0.33 -0.33  0.67
```

### Example: Deviation (Last) Contrasts


```r
deviation.last(3)
```

```
##   MD1 MD2
## 1   1   0
## 2   0   1
## 3  -1  -1
```

```r
deviation.last(3,intercept=TRUE)
```

```
##   Int MD1 MD2
## 1   1   1   0
## 2   1   0   1
## 3   1  -1  -1
```

```r
calm.decode(deviation.last(3))
```

```
##         1     2     3
## MD1  0.67 -0.33 -0.33
## MD2 -0.33  0.67 -0.33
```

```r
calm.decode(deviation.last(3,intercept=TRUE))
```

```
##         1     2     3
## Int  0.33  0.33  0.33
## MD1  0.67 -0.33 -0.33
## MD2 -0.33  0.67 -0.33
```

### Example: Helmert (Forward) Contrasts


```r
helmert.forward(3)
```

```
##          FH1  FH2
## 1  0.6666667  0.0
## 2 -0.3333333  0.5
## 3 -0.3333333 -0.5
```

```r
helmert.forward(3,intercept=TRUE)
```

```
##   Int        FH1  FH2
## 1   1  0.6666667  0.0
## 2   1 -0.3333333  0.5
## 3   1 -0.3333333 -0.5
```

```r
calm.decode(helmert.forward(3))
```

```
##     1    2    3
## FH1 1 -0.5 -0.5
## FH2 0  1.0 -1.0
```

```r
calm.decode(helmert.forward(3,intercept=TRUE))
```

```
##        1     2     3
## Int 0.33  0.33  0.33
## FH1 1.00 -0.50 -0.50
## FH2 0.00  1.00 -1.00
```

### Example: Helmert (Reverse) Contrasts


```r
helmert.reverse(3)
```

```
##     H2         H3
## 1 -0.5 -0.3333333
## 2  0.5 -0.3333333
## 3  0.0  0.6666667
```

```r
helmert.reverse(3,intercept=TRUE)
```

```
##   Int   H2         H3
## 1   1 -0.5 -0.3333333
## 2   1  0.5 -0.3333333
## 3   1  0.0  0.6666667
```

```r
calm.decode(helmert.reverse(3))
```

```
##       1    2 3
## H2 -1.0  1.0 0
## H3 -0.5 -0.5 1
```

```r
calm.decode(helmert.reverse(3,intercept=TRUE))
```

```
##         1     2    3
## Int  0.33  0.33 0.33
## H2  -1.00  1.00 0.00
## H3  -0.50 -0.50 1.00
```

### Example: Repeated (Forward) Contrasts


```r
repeated.forward(3)
```

```
##   1-2 2-3
## 1   0   0
## 2   1   0
## 3   1   1
```

```r
repeated.forward(3,intercept=TRUE)
```

```
##   Int 1-2 2-3
## 1   1   0   0
## 2   1   1   0
## 3   1   1   1
```

```r
calm.decode(repeated.forward(3))
```

```
##     1  2 3
## 1-2 0  1 0
## 2-3 0 -1 1
```

```r
calm.decode(repeated.forward(3,intercept=TRUE))
```

```
##      1  2 3
## Int  1  0 0
## 1-2 -1  1 0
## 2-3  0 -1 1
```

### Example: Repeated (Reverse) Contrasts


```r
repeated.reverse(3)
```

```
##   2-1 3-2
## 1   1   1
## 2   1   0
## 3   0   0
```

```r
repeated.reverse(3,intercept=TRUE)
```

```
##   Int 2-1 3-2
## 1   1   1   1
## 2   1   1   0
## 3   1   0   0
```

```r
calm.decode(repeated.reverse(3))
```

```
##     1  2 3
## 2-1 0  1 0
## 3-2 1 -1 0
```

```r
calm.decode(repeated.reverse(3,intercept=TRUE))
```

```
##     1  2  3
## Int 0  0  1
## 2-1 0  1 -1
## 3-2 1 -1  0
```

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 

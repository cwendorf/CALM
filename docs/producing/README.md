
## Producing Regression Codes from Hypotheses

### Overview

Using the procedures outlined in Wendorf (2004), `CALM` takes a set of linear contrasts to be tested and encodes them into multiple regression coding schemes. In the examples below, the input shows linear contrast weights (rows represented the weights for the groups, columns represent the different groups). The obtained output provides the multiple regression coding pattern (where columns represent vector codes, rows represent the groups).

### Example: Deviation (Last) Contrasts


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1/3,2/3,-1/3)
H2 <- c(-1/3,-1/3,2/3)
ex_deviation.last <- rbind(GM,H1,H2)
calm.encode(ex_deviation.last)
```

```
##         GM H1 H2
## GROUP 1  1 -1 -1
## GROUP 2  1  1  0
## GROUP 3  1  0  1
```

### Example: Helmert (Forward) Contrasts


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_helmert.forward <- rbind(GM,H1,H2)
calm.encode(ex_helmert.forward)
```

```
##         GM    H1   H2
## GROUP 1  1  0.67  0.0
## GROUP 2  1 -0.33  0.5
## GROUP 3  1 -0.33 -0.5
```

### Example: Repeated (Forward) Contrasts


```r
M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_repeated.forward <- rbind(M1,H1,H2)
calm.encode(ex_repeated.forward)
```

```
##         M1 H1 H2
## GROUP 1  1  0  0
## GROUP 2  1  1  0
## GROUP 3  1  1  1
```

### Example: Repeated (Reverse) Contrasts


```r
M1 <- c(0,0,1)
H1 <- c(0,1,-1)
H2 <- c(1,-1,0)
ex_repeated.reverse <- rbind(M1,H1,H2)
calm.encode(ex_repeated.reverse)
```

```
##         M1 H1 H2
## GROUP 1  1  1  1
## GROUP 2  1  1  0
## GROUP 3  1  0  0
```

### Example: Hypothesized Contrasts


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom <- rbind(GM,H1,H2)
calm.encode(ex_custom)
```

```
##         GM    H1 H2
## GROUP 1  1  0.67  0
## GROUP 2  1  0.67 -1
## GROUP 3  1 -1.33  1
```

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 

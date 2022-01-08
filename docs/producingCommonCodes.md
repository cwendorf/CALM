
## Producing Common Contrast Codes

In the examples below, the input shows linear contrast weights (rows represented the weights for the groups, columns represent the different groups). The obtained output provides the coding pattern (where columns represent vector codes, rows represent the groups).

### Treatment (First) Contrasts

The intercept is equivalent to mean of the first group. Parameters represent the difference between each group and the first group. 


```r
M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(-1,0,1)
ex_treatment.first <- rbind(M1,H1,H2)
calm.encode(ex_treatment.first)
```

```
##         M1 H1 H2
## GROUP 1  1  0  0
## GROUP 2  1  1  0
## GROUP 3  1  0  1
```

### Treatment (Last) Contrasts

The intercept is equivalent to mean of the last group. Parameters represent the difference between each group and the last group. 


```r
M3 <- c(0,0,1)
H1 <- c(1,0,-1)
H2 <- c(0,1,-1)
ex_treatment.last <- rbind(M3,H1,H2)
calm.encode(ex_treatment.last)
```

```
##         M3 H1 H2
## GROUP 1  1  1  0
## GROUP 2  1  0  1
## GROUP 3  1  0  0
```

### Control (First) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the first group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1,0,1)
ex_control.first <- rbind(GM,H1,H2)
calm.encode(ex_control.first)
```

```
##         GM      H1      H2
## GROUP 1  1 -0.3333 -0.3333
## GROUP 2  1  0.6667 -0.3333
## GROUP 3  1 -0.3333  0.6667
```

### Control (Last) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the last group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,0,-1)
H2 <- c(0,1,-1)
ex_control.last <- rbind(GM,H1,H2)
calm.encode(ex_control.last)
```

```
##         GM      H1      H2
## GROUP 1  1  0.6667 -0.3333
## GROUP 2  1 -0.3333  0.6667
## GROUP 3  1 -0.3333 -0.3333
```

### Deviation (First) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the grand mean. The first group is not compared. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1/3,2/3,-1/3)
H2 <- c(-1/3,-1/3,2/3)
ex_deviation.first <- rbind(GM,H1,H2)
calm.encode(ex_deviation.first)
```

```
##         GM H1 H2
## GROUP 1  1 -1 -1
## GROUP 2  1  1  0
## GROUP 3  1  0  1
```

### Deviation (Last) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the grand mean. The last group is not compared. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(2/3,-1/3,-1/3)
H2 <- c(-1/3,2/3,-1/3)
ex_deviation.last <- rbind(GM,H1,H2)
calm.encode(ex_deviation.last)
```

```
##         GM H1 H2
## GROUP 1  1  1  0
## GROUP 2  1  0  1
## GROUP 3  1 -1 -1
```

### Helmert (Forward) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the mean of the subsequent groups. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_helmert.forward <- rbind(GM,H1,H2)
calm.encode(ex_helmert.forward)
```

```
##         GM      H1   H2
## GROUP 1  1  0.6667  0.0
## GROUP 2  1 -0.3333  0.5
## GROUP 3  1 -0.3333 -0.5
```

### Helmert (Reverse) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the mean of the previous groups. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1/2,-1/2,1)
ex_helmert.reverse <- rbind(GM,H1,H2)
calm.encode(ex_helmert.reverse)
```

```
##         GM   H1      H2
## GROUP 1  1 -0.5 -0.3333
## GROUP 2  1  0.5 -0.3333
## GROUP 3  1  0.0  0.6667
```

### Repeated (Forward) Contrasts

The intercept is equivalent to mean of the first group. Parameters represent the difference between each group and the subsequent group. 


```r
M1 <- c(1,0,0)
H1 <- c(1,-1,0)
H2 <- c(0,1,-1)
ex_repeated.forward <- rbind(M1,H1,H2)
calm.encode(ex_repeated.forward)
```

```
##         M1 H1 H2
## GROUP 1  1  0  0
## GROUP 2  1 -1  0
## GROUP 3  1 -1 -1
```

### Repeated (Reverse) Contrasts

The intercept is equivalent to mean of the first group. Parameters represent the difference between each group and the previous group. 


```r
M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_repeated.reverse <- rbind(M1,H1,H2)
calm.encode(ex_repeated.reverse)
```

```
##         M1 H1 H2
## GROUP 1  1  0  0
## GROUP 2  1  1  0
## GROUP 3  1  1  1
```

### Difference (Forward) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the subsequent group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1,0)
H2 <- c(0,1,-1)
ex_difference.forward <- rbind(GM,H1,H2)
calm.encode(ex_difference.forward)
```

```
##         GM      H1      H2
## GROUP 1  1  0.6667  0.3333
## GROUP 2  1 -0.3333  0.3333
## GROUP 3  1 -0.3333 -0.6667
```

### Difference (Reverse) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the previous group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_difference.reverse <- rbind(GM,H1,H2)
calm.encode(ex_difference.reverse)
```

```
##         GM      H1      H2
## GROUP 1  1 -0.6667 -0.3333
## GROUP 2  1  0.3333 -0.3333
## GROUP 3  1  0.3333  0.6667
```

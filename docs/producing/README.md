
## Producing Contrast Codes

### Overview

Following Wendorf (2004), `CALM` can take a set of linear contrasts to be tested and encode them into coding schemes. In the examples below, the input shows linear contrast weights (rows represented the weights for the groups, columns represent the different groups). The obtained output provides the coding pattern (where columns represent vector codes, rows represent the groups).

### Common Contrast Codes

#### Example: Treatment (First) Contrasts

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

#### Example: Treatment (Last) Contrasts

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

#### Example: Control (First) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the first group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1,0,1)
ex_control.first <- rbind(GM,H1,H2)
calm.encode(ex_control.first)
```

```
##         GM    H1    H2
## GROUP 1  1 -0.33 -0.33
## GROUP 2  1  0.67 -0.33
## GROUP 3  1 -0.33  0.67
```

#### Example: Control (Last) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the last group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,0,-1)
H2 <- c(0,1,-1)
ex_control.last <- rbind(GM,H1,H2)
calm.encode(ex_control.last)
```

```
##         GM    H1    H2
## GROUP 1  1  0.67 -0.33
## GROUP 2  1 -0.33  0.67
## GROUP 3  1 -0.33 -0.33
```

#### Example: Deviation (First) Contrasts

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

#### Example: Deviation (Last) Contrasts

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

#### Example: Helmert (Forward) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the mean of the subsequent groups. 


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

#### Example: Helmert (Reverse) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the mean of the previous groups. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1/2,-1/2,1)
ex_helmert.reverse <- rbind(GM,H1,H2)
calm.encode(ex_helmert.reverse)
```

```
##         GM   H1    H2
## GROUP 1  1 -0.5 -0.33
## GROUP 2  1  0.5 -0.33
## GROUP 3  1  0.0  0.67
```

#### Example: Repeated (Forward) Contrasts

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

#### Example: Repeated (Reverse) Contrasts

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

#### Example: Difference (Forward) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the subsequent group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1,0)
H2 <- c(0,1,-1)
ex_difference.forward <- rbind(GM,H1,H2)
calm.encode(ex_difference.forward)
```

```
##         GM    H1    H2
## GROUP 1  1  0.67  0.33
## GROUP 2  1 -0.33  0.33
## GROUP 3  1 -0.33 -0.67
```

#### Example: Difference (Reverse) Contrasts

The intercept is equivalent to mean of the group means. Parameters represent the difference between each group and the previous group. 


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_difference.reverse <- rbind(GM,H1,H2)
calm.encode(ex_difference.reverse)
```

```
##         GM    H1    H2
## GROUP 1  1 -0.67 -0.33
## GROUP 2  1  0.33 -0.33
## GROUP 3  1  0.33  0.67
```

### Custom Contrast Codes

#### Example: Orthogonal Contrasts

In this custom example, the intercept is equivalent to mean of the group means. The first parameter represents the difference between the first group and mean of the subsequent groups. The second parameter represents the difference between the second and third groups.


```r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.orthogonal)
```

```
##         GM    H1   H2
## GROUP 1  1  0.67  0.0
## GROUP 2  1 -0.33  0.5
## GROUP 3  1 -0.33 -0.5
```

#### Example: Nonorthogonal Contrasts

In this custom example, the intercept is equivalent to mean of the first group. The first parameter represents the difference between the first group and mean of the subsequent groups. The second parameter represents the difference between the first and second groups.


```r
GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.nonorthogonal)
```

```
##         GM H1 H2
## GROUP 1  1  0  0
## GROUP 2  1  0 -1
## GROUP 3  1 -2  1
```

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57. 


## Extracting from Regression Codes

In the examples below, the matrix input shows the coding pattern (columns represent coded vectors, rows represent the groups being compared). The obtained output shows the linear contrast hypotheses (the rows represent the weights for the contrast, the columns represent the groups being compared).

### Dummy Coding


```r
ex_dummy <- matrix(c(
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

The intercept is equivalent to the mean of the last group. Parameters represent the difference between each group and the last group. 

### Effect Coding


```r
ex_effect <- matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_effect)
```

```
##          GROUP 1 GROUP 2 GROUP 3
## HYPOTH 1  0.3333  0.3333  0.3333
## HYPOTH 2  0.6667 -0.3333 -0.3333
## HYPOTH 3 -0.3333  0.6667 -0.3333
```

The intercept is equivalent to the mean of the group means. Parameter represent the difference between each group and the grand mean. The last group is not compared. 

### Repeated Coding


```r
ex_repeated <- matrix(c(
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

The intercept is equivalent to the mean of the first group. Parameter represent the difference between each group and the previous group. 

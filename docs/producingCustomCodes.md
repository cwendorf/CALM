
## Producing Custom Contrast Codes

`CALM` can take a set of linear contrasts to be tested and encode them
into coding schemes. The examples below take custom contrasts (both
orthogonal and nonorthogonal) and produce the coding scheme associated
with it.

The package takes linear contrast weights (rows represented the weights
for the groups, columns represent the different groups) and provides the
coding pattern (where columns represent vector codes, rows represent the
groups).

- [Orthogonal Contrasts](#orthogonal-contrasts)
- [Nonorthogonal Contrasts](#nonorthogonal-contrasts)

------------------------------------------------------------------------

### Orthogonal Contrasts

In this custom example, the intercept is equivalent to mean of the group
means. The first parameter represents the difference between the first
group and mean of the subsequent groups. The second parameter represents
the difference between the second and third groups.

``` r
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.orthogonal)
```

    ##         GM      H1   H2
    ## GROUP 1  1  0.6667  0.0
    ## GROUP 2  1 -0.3333  0.5
    ## GROUP 3  1 -0.3333 -0.5

### Nonorthogonal Contrasts

In this custom example, the intercept is equivalent to mean of the first
group. The first parameter represents the difference between the first
group and mean of the subsequent groups. The second parameter represents
the difference between the first and second groups.

``` r
GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.nonorthogonal)
```

    ##         GM H1 H2
    ## GROUP 1  1  0  0
    ## GROUP 2  1  0 -1
    ## GROUP 3  1 -2  1

# [`CALM`](https://github.com/cwendorf/CALM/)

## Extracting Hypotheses from Regression Codes

`CALM` can take existing coding patterns and decode them to determine
the hypotheses being tested. The examples below use traditional and
commonly-taught regression codes (dummy codes, effect codes, etc.) and
extract the hypotheses implied by each code vector.

The package takes matrix input of the coding pattern (columns represent
coded vectors, rows represent the groups being represented) and outputs
the linear contrasts hypotheses being represented (the rows represent
the weights for the contrast, the columns represent the groups being
compared).

- [Dummy Coding](#dummy-coding)
- [Effect Coding](#effect-coding)
- [Repeated Coding](#repeated-coding)

------------------------------------------------------------------------

### Dummy Coding

Specify a matrix of dummy codes and then use CALM to decode it into
hypotheses.

``` r
ex_dummy <- matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_dummy)
```

    ##          GROUP 1 GROUP 2 GROUP 3
    ## HYPOTH 1       0       0       1
    ## HYPOTH 2       1       0      -1
    ## HYPOTH 3       0       1      -1

This shows that the intercept is equivalent to the mean of the last
group. THe additional parameters represent the difference between each
group and the last group.

### Effect Coding

Specify a matrix of effect codes and then use CALM to decode it into
hypotheses.

``` r
ex_effect <- matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_effect)
```

    ##          GROUP 1 GROUP 2 GROUP 3
    ## HYPOTH 1  0.3333  0.3333  0.3333
    ## HYPOTH 2  0.6667 -0.3333 -0.3333
    ## HYPOTH 3 -0.3333  0.6667 -0.3333

This shows that the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the grand mean. The last group is not compared.

### Repeated Coding

Specify a matrix of repeated codes and then use CALM to decode it into
hypotheses.

``` r
ex_repeated <- matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_repeated)
```

    ##          GROUP 1 GROUP 2 GROUP 3
    ## HYPOTH 1       1       0       0
    ## HYPOTH 2      -1       1       0
    ## HYPOTH 3       0      -1       1

This shows that the intercept is equivalent to the mean of the first
group. The additional parameters represent the difference between each
group and the previous group.

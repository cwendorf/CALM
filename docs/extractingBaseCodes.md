
## Extracting Hypotheses from Base R Contrast Codes

`CALM` can take existing coding patterns and decode them to determine
the hypotheses being tested. The examples below use the built-in codes
in R (treatment, SAS, sum, helmert, and poly) and extract the hypotheses
implied by each code vector.

The package takes matrix input of the coding pattern (columns represent
coded vectors, rows represent the groups being represented) and outputs
the linear contrasts hypotheses being represented (the rows represent
the weights for the contrast, the columns represent the groups being
compared).

- [contr.treatment](#contr.treatment)
- [contr.SAS](#contr.sas)
- [contr.sum](#contr.sum)
- [contr.helmert](#contr.helmert)
- [contr.poly](#contr.poly)

------------------------------------------------------------------------

### contr.treatment

Specify that we wish to examine the existing `contr.treatment` and then
use CALM to decode it into hypotheses.

``` r
ex_contr.treatment <- cbind(Int=1,contr.treatment(3))
ex_contr.treatment
```

    ##   Int 2 3
    ## 1   1 0 0
    ## 2   1 1 0
    ## 3   1 0 1

``` r
calm.decode(ex_contr.treatment)
```

    ##      1 2 3
    ## Int  1 0 0
    ## 2   -1 1 0
    ## 3   -1 0 1

This shows that the intercept is equivalent to the mean of the first
group. The additional parameters represent the difference between each
group and the first group.

### contr.SAS

Specify that we wish to examine the existing `contr.SAS` and then use
CALM to decode it into hypotheses.

``` r
ex_contr.SAS <- cbind(Int=1,contr.SAS(3))
ex_contr.SAS
```

    ##   Int 1 2
    ## 1   1 1 0
    ## 2   1 0 1
    ## 3   1 0 0

``` r
calm.decode(ex_contr.SAS)
```

    ##     1 2  3
    ## Int 0 0  1
    ## 1   1 0 -1
    ## 2   0 1 -1

This shows that the intercept is equivalent to the mean of the last
group. The additional parameters represent the difference between each
group and the last group.

### contr.sum

Specify that we wish to examine the existing `contr.sum` and then use
CALM to decode it into hypotheses.

``` r
ex_contr.sum <- cbind(Int=1,contr.sum(3))
ex_contr.sum
```

    ##   Int      
    ## 1   1  1  0
    ## 2   1  0  1
    ## 3   1 -1 -1

``` r
calm.decode(ex_contr.sum)
```

    ##           1       2       3
    ## Int  0.3333  0.3333  0.3333
    ##      0.6667 -0.3333 -0.3333
    ##     -0.3333  0.6667 -0.3333

This shows that the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the grand mean. The last group is not compared.

### contr.helmert

Specify that we wish to examine the existing `contr.herlmert` and then
use CALM to decode it into hypotheses.

``` r
ex_contr.helmert <- cbind(Int=1,contr.helmert(3))
ex_contr.helmert
```

    ##   Int      
    ## 1   1 -1 -1
    ## 2   1  1 -1
    ## 3   1  0  2

``` r
calm.decode(ex_contr.helmert)
```

    ##           1       2      3
    ## Int  0.3333  0.3333 0.3333
    ##     -0.5000  0.5000 0.0000
    ##     -0.1667 -0.1667 0.3333

This shows that the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the mean of the subsequent groups.

### contr.poly

Specify that we wish to examine the existing `contr.poly` and then use
CALM to decode it into hypotheses.

``` r
ex_contr.poly <- cbind(Int=1,contr.poly(3))
ex_contr.poly
```

    ##      Int            .L         .Q
    ## [1,]   1 -7.071068e-01  0.4082483
    ## [2,]   1 -7.850462e-17 -0.8164966
    ## [3,]   1  7.071068e-01  0.4082483

``` r
calm.decode(ex_contr.poly)
```

    ##     GROUP 1 GROUP 2 GROUP 3
    ## Int  0.3333  0.3333  0.3333
    ## .L  -0.7071  0.0000  0.7071
    ## .Q   0.4082 -0.8165  0.4082

THis shows that the intercept is equivalent to the mean of the group
means. The additional parameters represent polynomial trends (linear,
quadratic, etc.).

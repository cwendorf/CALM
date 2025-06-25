
## Using Common Contrast Codes

`CALM` includes a complete set of commonly used coding schemes that
can be used directly in linear model specifications. The examples below
use the built-in codes in the context of a General Linear Model to test
the associated hypotheses.

- [The Data](#the-data)
- [Treatment (First) Contrasts](#treatment-(first)-contrasts)
- [Treatment (Last) Contrasts](#treatment-(last)-contrasts)
- [Control (First) Contrasts](#control-(first)-contrasts)
- [Control (Last) Contrasts](#control-(last)-contrasts)
- [Deviation (First) Contrasts](#deviation-(first)-contrasts)
- [Deviation (Last) Contrasts](#deviation-(last)-contrasts)
- [Helmert (Forward) Contrasts](#helmert-(forward)-contrasts)
- [Helmert (Reverse) Contrasts](#helmert-(reverse)-contrasts)
- [Repeated (Forward) Contrasts](#repeated-(forward)-contrasts)
- [Repeated (Reverse) Contrasts](#repeated-(reverse)-contrasts)
- [Difference (Forward) Contrasts](#difference-(forward)-contrasts)
- [Difference (Reverse) Contrasts](#difference-(reverse)-contrasts)

------------------------------------------------------------------------

### The Data

For the sake of example, this site uses the following data. For
reference, the group means are displayed.

``` r
mtcars
```

    ##                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
    ## Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
    ## Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
    ## Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
    ## Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
    ## Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
    ## Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
    ## Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
    ## Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
    ## Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
    ## Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
    ## Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
    ## Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
    ## Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
    ## Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
    ## Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
    ## Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
    ## Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
    ## AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
    ## Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
    ## Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
    ## Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
    ## Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
    ## Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
    ## Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
    ## Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
    ## Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
    ## Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

``` r
mtcars$cyl <- factor(mtcars$cyl) 
summary(lm(mpg~cyl,data=mtcars))
```

    ## 
    ## Call:
    ## lm(formula = mpg ~ cyl, data = mtcars)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -5.2636 -1.8357  0.0286  1.3893  7.2364 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  26.6636     0.9718  27.437  < 2e-16 ***
    ## cyl6         -6.9208     1.5583  -4.441 0.000119 ***
    ## cyl8        -11.5636     1.2986  -8.905 8.57e-10 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 3.223 on 29 degrees of freedom
    ## Multiple R-squared:  0.7325, Adjusted R-squared:  0.714 
    ## F-statistic:  39.7 on 2 and 29 DF,  p-value: 4.979e-09

``` r
tapply(mtcars$mpg,mtcars$cyl,mean)
```

    ##        4        6        8 
    ## 26.66364 19.74286 15.10000

### Treatment (First) Contrasts

``` r
contrasts(mtcars$cyl) <- treatment.first
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##               Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept)  26.663636  0.9718008 27.437347 2.688358e-22
    ## cyl6-4       -6.920779  1.5583482 -4.441099 1.194696e-04
    ## cyl8-4      -11.563636  1.2986235 -8.904534 8.568209e-10

As specified, the intercept is equivalent to the mean of the first
group. The additional parameters represent the difference between each
group and the first group.

### Treatment (Last) Contrasts

``` r
contrasts(mtcars$cyl) <- treatment.last
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 15.100000  0.8614094 17.529412 5.660681e-17
    ## cyl4-8      11.563636  1.2986235  8.904534 8.568209e-10
    ## cyl6-8       4.642857  1.4920048  3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the last group.
The additional parameters represent the difference between each group
and the last group.

### Control (First) Contrasts

``` r
contrasts(mtcars$cyl) <- control.first
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##               Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept)  20.502165  0.5935276 34.542900 4.102221e-25
    ## cyl6-4       -6.920779  1.5583482 -4.441099 1.194696e-04
    ## cyl8-4      -11.563636  1.2986235 -8.904534 8.568209e-10

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the first group.

### Control (Last) Contrasts

``` r
contrasts(mtcars$cyl) <- control.last
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 20.502165  0.5935276 34.542900 4.102221e-25
    ## cyl4-8      11.563636  1.2986235  8.904534 8.568209e-10
    ## cyl6-8       4.642857  1.4920048  3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the last group.

### Deviation (First) Contrasts

``` r
contrasts(mtcars$cyl) <- deviation.first
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##               Estimate Std. Error    t value     Pr(>|t|)
    ## (Intercept) 20.5021645  0.5935276 34.5428996 4.102221e-25
    ## cylMD2      -0.7593074  0.9203038 -0.8250616 4.160721e-01
    ## cylMD3      -5.4021645  0.7743494 -6.9763911 1.139163e-07

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the grand mean. The first group is not compared.

### Deviation (Last) Contrasts

``` r
contrasts(mtcars$cyl) <- deviation.last
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##               Estimate Std. Error    t value     Pr(>|t|)
    ## (Intercept) 20.5021645  0.5935276 34.5428996 4.102221e-25
    ## cyl1         6.1614719  0.8167460  7.5439269 2.574044e-08
    ## cyl2        -0.7593074  0.9203038 -0.8250616 4.160721e-01

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the grand mean. The last group is not compared.

### Helmert (Forward) Contrasts

``` r
contrasts(mtcars$cyl) <- helmert.forward
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 20.502165  0.5935276 34.542900 4.102221e-25
    ## cylFH1       9.242208  1.2251189  7.543927 2.574044e-08
    ## cylFH2       4.642857  1.4920048  3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the mean of the subsequent groups.

### Helmert (Reverse) Contrasts

``` r
contrasts(mtcars$cyl) <- helmert.reverse
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 20.502165  0.5935276 34.542900 4.102221e-25
    ## cylRH2      -6.920779  1.5583482 -4.441099 1.194696e-04
    ## cylRH3      -8.103247  1.1615242 -6.976391 1.139163e-07

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the mean of the previous groups.

### Repeated (Forward) Contrasts

``` r
contrasts(mtcars$cyl) <- repeated.forward
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 26.663636  0.9718008 27.437347 2.688358e-22
    ## cyl4-6       6.920779  1.5583482  4.441099 1.194696e-04
    ## cyl6-8       4.642857  1.4920048  3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the first
group. The additional parameters represent the difference between each
group and the subsequent group.

### Repeated (Reverse) Contrasts

``` r
contrasts(mtcars$cyl) <- repeated.reverse
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 26.663636  0.9718008 27.437347 2.688358e-22
    ## cyl6-4      -6.920779  1.5583482 -4.441099 1.194696e-04
    ## cyl8-6      -4.642857  1.4920048 -3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the first
group. The additional parameters represent the difference between each
group and the previous group.

### Difference (Forward) Contrasts

``` r
contrasts(mtcars$cyl) <- difference.forward
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 20.502165  0.5935276 34.542900 4.102221e-25
    ## cyl4-6       6.920779  1.5583482  4.441099 1.194696e-04
    ## cyl6-8       4.642857  1.4920048  3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the subsequent group.

### Difference (Reverse) Contrasts

``` r
contrasts(mtcars$cyl) <- difference.reverse
summary(lm(mpg~cyl,data=mtcars))$coefficients
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 20.502165  0.5935276 34.542900 4.102221e-25
    ## cyl6-4      -6.920779  1.5583482 -4.441099 1.194696e-04
    ## cyl8-6      -4.642857  1.4920048 -3.111825 4.152209e-03

As specified, the intercept is equivalent to the mean of the group
means. The additional parameters represent the difference between each
group and the previous group.

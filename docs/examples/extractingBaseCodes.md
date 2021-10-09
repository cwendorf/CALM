---
title: "Contrast Algorithms for Linear Models"
author: "Craig A. Wendorf"
date: "2021-10-09"
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 4
    collapse: true
    theme: cerulean
    highlight: default
    keep_md: TRUE
vignette: >
  %\VignetteIndexEntry{Extracting from R Base Contrast Codes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Extracting from R Base Contrast Codes

In the examples below, the matrix input shows the coding pattern (columns represent coded vectors, rows represent the groups being represented). The obtained output shows the linear contrasts hypotheses being represented (the rows represent the weights for the contrast, the columns represent the groups being compared).

### contr.treatment


```r
ex_contr.treatment = cbind(Int=1,contr.treatment(3))
calm.decode(ex_contr.treatment)
```

```
##      1 2 3
## Int  1 0 0
## 2   -1 1 0
## 3   -1 0 1
```

The intercept is equivalent to the mean of the first group. Parameter represent the difference between each group and the first group. 

### contr.SAS


```r
ex_contr.SAS = cbind(Int=1,contr.SAS(3))
calm.decode(ex_contr.SAS)
```

```
##     1 2  3
## Int 0 0  1
## 1   1 0 -1
## 2   0 1 -1
```

The intercept is equivalent to the mean of the last group. Parameter represent the difference between each group and the last group.

### contr.sum


```r
ex_contr.sum = cbind(Int=1,contr.sum(3))
calm.decode(ex_contr.sum)
```

```
##           1       2       3
## Int  0.3333  0.3333  0.3333
##      0.6667 -0.3333 -0.3333
##     -0.3333  0.6667 -0.3333
```

The intercept is equivalent to the mean of the group means. Parameters represent the difference between each group and the grand mean. The last group is not compared.

### contr.helmert


```r
ex_contr.helmert = cbind(Int=1,contr.helmert(3))
calm.decode(ex_contr.helmert)
```

```
##           1       2      3
## Int  0.3333  0.3333 0.3333
##     -0.5000  0.5000 0.0000
##     -0.1667 -0.1667 0.3333
```

The intercept is equivalent to the mean of the group means. Parameters represent the difference between each group and the mean of the subsequent groups. 

### contr.poly


```r
ex_contr.poly = cbind(Int=1,contr.poly(3))
calm.decode(ex_contr.poly)
```

```
##     GROUP 1 GROUP 2 GROUP 3
## Int  0.3333  0.3333  0.3333
## .L  -0.7071  0.0000  0.7071
## .Q   0.4082 -0.8165  0.4082
```

The intercept is equivalent to the mean of the group means. Parameters represent polynomial trends (linear, quadratic, etc.).

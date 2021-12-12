# Contrast Algoritms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Extracting from Regression Codes

### Dummy Coding

ex_dummy <- matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_dummy)

### Effect Coding

ex_effect <- matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_effect)

### Repeated Coding

ex_repeated <- matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_repeated)

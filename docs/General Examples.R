# Contrast Algorithms for Linear Models
## Basic Examples

### Producing Regression Codes from Hypotheses

#### Example: Hypothesized Contrasts
L <- matrix(c(
    1/3,1/3,1/3,
    1,-1/2,-1/2,
    1,-1,0),
    nrow=3, 
    byrow=TRUE)
calm.encode(L)

#### Example: Helmert Contrasts
L <- matrix(c(
    1/3,1/3,1/3,
    1,-1/2,-1/2,
    0,1,-1),
    nrow=3, 
    byrow=TRUE)
calm.encode(L)

#### Example: Repeated Contrasts
L <- matrix(c(
    1,0,0,
    -1,1,0,
    0,-1,1),
    nrow=3, 
    byrow=TRUE)
calm.encode(L)


### Extracting Hypotheses from Regression Codes

#### Example: Dummy Coding
X = matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE)
calm.decode(X)

#### Example: Effect Coding
X = matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(X)

#### Example: Repeated Coding
X = matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE)
calm.decode(X)

# PRODUCING AND EXTRACTING REGRESSION CODES
## Code for Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. Understanding Statistics, 3(1), 47-57. https://doi.org/10.1207/s15328031us0301_3


### Producing Regression Codes from Hypotheses

calculateCodes <- function(L) {
    # Prepare Matrix of Codes
        X <- t(L) %*% solve(L %*% t(L))
    # Output List of Hypothesis and Code Matrices
        rownames(L)=rownames(L,do.NULL=FALSE,prefix="HYPOTHESIS:")
        colnames(L)=colnames(L,do.NULL=FALSE,prefix="GROUP:")
        rownames(X)=rownames(X,do.NULL=FALSE,prefix="GROUP:")
        colnames(X)=colnames(X,do.NULL=FALSE,prefix="CODE:")
        list("Matrix of Hypotheses"=round(L,3),"Matrix of Codes"=round(X,3))
}

#### Example: Hypothesized Contrasts
L <- matrix(c(
    1/3,1/3,1/3,
    1,-1/2,-1/2,
    1,-1,0),
    nrow=3, 
    byrow=TRUE) # Hypotheses are in Rows
calculateCodes(L) # Codes are in Columns

#### Example: Helmert Contrasts
L <- matrix(c(
    1/3,1/3,1/3,
    1,-1/2,-1/2,
    0,1,-1),
    nrow=3, 
    byrow=TRUE) # Hypotheses are in Rows
calculateCodes(L) # Codes are in Columns

#### Example: Repeated Contrasts
L <- matrix(c(
    1,0,0,
    -1,1,0,
    0,-1,1),
    nrow=3, 
    byrow=TRUE) # Hypotheses are in Rows
calculateCodes(L) # Codes are in Columns


### Extracting Hypotheses from Regression Codes

extractHypotheses <- function(X) {
    # Prepare Matrix of Hypotheses
        L <- solve(t(X) %*% X) %*% t(X)
    # Output List of Hypothesis and Code Matrices
        rownames(L)=rownames(L,do.NULL=FALSE,prefix="HYPOTHESIS:")
        colnames(L)=colnames(L,do.NULL=FALSE,prefix="GROUP:")    
        rownames(X)=rownames(X,do.NULL=FALSE,prefix="GROUP:")
        colnames(X)=colnames(X,do.NULL=FALSE,prefix="CODE:")
        list("Matrix of Codes"=round(X,3),"Matrix of Hypotheses"=round(L,3))
}

#### Example: Dummy Coding
X = matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE) # Codes are in Columns
extractHypotheses(X) # Hypothesis are in Rows

#### Example: Effect Coding
X = matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE) # Codes are in Columns
extractHypotheses(X) # Hypothesis are in Rows

#### Example: Repeated Coding
X = matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE) # Codes are in Columns
extractHypotheses(X) # Hypothesis are in Rows

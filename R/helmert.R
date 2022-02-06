# Contrast Algorithms for Linear Models
## Contrast: Helmert

### Contrast: Helmert (Forward)
### R Equivalent: none
### SPSS Equivalent: helmert
### MR Equivalent: none
### codingMatrices Equivalent: helmert_forward
### Original Code: codingMatrices

helmert.forward <- function(n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L)
      levels <- .zf(seq_len(n))
    else stop("not enough degrees of freedom to define contrasts")
  }
  else {
    levels <- as.character(n)
    n <- length(n)
  }
  if(!contrasts) {
    B <- diag(n)
    dimnames(B) <- list(1:n, levels)
    if(sparse) B <- .asSparse(B)
    return(B)
  }
  B <- rbind(diag(n:2 - 1), 0)
  B[lower.tri(B)] <- -1
  B <- B/rep(n:2, each = n)
  dimnames(B) <- list(1:n, paste0("FH", .zf(2:n - 1)))
  if(intercept) (B <- cbind(Int=1,B))   
  if(sparse){
    .asSparse(B)
  } else {
    B
  }
}

### Contrast: Helmert (Reverse)
### R Equivalent: helmert
### SPSS Equivalent: difference
### MR Equivalent: none
### codingMatrices Equivalent: helmert
### Original Code: codingMatrices

helmert.reverse <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L)
      levels <- .zf(seq_len(n))
    else stop("not enough degrees of freedom to define contrasts")
  }
  else {
    levels <- as.character(n)
    n <- length(n)
  }
  if(!contrasts) {
    B <- diag(n)
    dimnames(B) <- list(1:n, levels)
    if(sparse) B <- .asSparse(B)
    return(B)
  }
  B <- diag(1:n - 1)
  B[upper.tri(B)] <- -1
  B  <- B/rep(1:n, each = n)
  B <- B[, -1, drop = FALSE]
  dimnames(B) <- list(1:n, paste0("RH", .zf(2:n)))
  if(intercept) (B <- cbind(Int=1,B))  
  if(sparse) {
    .asSparse(B)
  } else {
    B
  }
}

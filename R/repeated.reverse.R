# Contrast Algorithms for Linear Models
## Contrast: Repeated (Reverse)

### R Equivalent: none
### SPSS Equivalent: none
### MR Equivalent: none
### codingMatrices Parallel: diff

### Original Code: codingMatrices
### Dimnames Code: codingMatrices

repeated.reverse <- function(n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
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
  if(max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- matrix(0,n,n)
  B[lower.tri(B,diag=TRUE)] <- 1
  B <- t(apply(B, 2, rev))
  B <- B[,-1]
  dimnames(B) <- list(1:n, paste(levels[-n], levels[-1], sep = "-"))
  if(intercept) (B <- cbind(Int=1,B))   
  if(sparse){
    .asSparse(B)
  } else {
    B
  }
}

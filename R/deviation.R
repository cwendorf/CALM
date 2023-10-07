# Contrast Algorithms for Linear Models
## Contrast: Deviation

### Contrast: Deviation (First)
### R Equivalent: none
### SPSS Equivalent: none
### MR Equivalent: none
### codingMatrices Equivalent: deviation_first
### Original Code: codingMatrices

deviation.first <- function(n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
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
  B <- rbind(-1, diag(n-1))
  dimnames(B) <- list(1:n, paste0("MD", .zf(2:n)))
  if(intercept) (B <- cbind(Int=1,B))  
  if(sparse){
    .asSparse(B)
  } else {
    B
  }
}

### Contrast: Deviation (Last)
### R Equivalent: contr.sum
### SPSS Equivalent: deviation
### MR Equivalent: effect
### codingMatrices Equivalent: deviation
### Original Code: R Base

deviation.last <- function (n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
    if (length(n) <= 1L) {
        if (is.numeric(n) && length(n) == 1L && n > 1L) levels <- seq_len(n)
        else stop("not enough degrees of freedom to define contrasts")
    }
    else levels <- n
    levels <- as.character(levels)
    cont <- .Diag(levels, sparse = sparse)
    if (contrasts) {
        cont <- cont[, -length(levels), drop = FALSE]
        cont[length(levels), ] <- -1
        colnames(cont) <- NULL
        #dimnames(cont) <- list(1:n, paste0("MD", .zf(1:(n-1))))  
    }
    if(intercept) (cont <- cbind(Int=1,cont))
    cont
}

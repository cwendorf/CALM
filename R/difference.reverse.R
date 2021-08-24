# Contrast Algorithms for Linear Models
## Contrast: Difference (Reverse)

### R Equivalent: none
### SPSS Equivalent: none
### MR Equivalent: none
### codingMatrices Equivalent: diff

### Original Code: codingMatrices

difference.reverse <- function(n, intercept=FALSE,contrasts = TRUE, sparse = FALSE) {
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
  B <- col(matrix(0, n, n)) - 1
  ut <- upper.tri(B)
  B[ut] <- B[ut] - n
  B <- B[, -1, drop = FALSE]/n
  dimnames(B) <- list(1:n,
                      paste(levels[-1], levels[-n], sep = "-"))
  if(intercept) (B <- cbind(Int=1,B))  
  if(sparse){
    .asSparse(B)
  } else {
    B
  }
}

# Contrast Algorithms for Linear Models
## Contrast: Control (Last)

### R Equivalent: none
### SPSS Equivalent: none
### MR Equivalent: none
### codingMatrices Equivalent: control_last

### Original Code: codingMatrices

control_last <- function(n, intercept=FALSE,contrasts = TRUE, sparse = FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L)
      levels <- .zf(seq_len(n))
    else stop("not enough degrees of freedom to define contrasts")
  }
  else {
    levels <- as.character(n)
    n <- length(n)
  }
  B <- diag(n)
  dimnames(B) <- list(1:n, levels)
  if(!contrasts) {
    if(sparse) B <- .asSparse(B)
    return(B)
  }
  if(max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- B - 1/n
  B <- B[, -n, drop = FALSE]
  colnames(B) <- paste(levels[-n], levels[n], sep="-")
  if(intercept) (B <- cbind(Int=1,B))
  if(sparse){
    .asSparse(B)
  } else {
    B
  }
}

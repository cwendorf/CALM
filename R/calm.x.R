# Contrast Algorithms for Linear Models
## Conversion Functions

calm.encode <- function(L,digits=3) {
  X <- t(L) %*% solve(L %*% t(L))
  rownames(X)=rownames(X,do.NULL=FALSE,prefix="GROUP ")
  colnames(X)=colnames(X,do.NULL=FALSE,prefix="CODE ")
  return(round(X,digits))
}

calm.decode <- function(X,digits=3) {
  L <- solve(t(X) %*% X) %*% t(X)
  rownames(L)=rownames(L,do.NULL=FALSE,prefix="HYPOTH ")
  colnames(L)=colnames(L,do.NULL=FALSE,prefix="GROUP ")   
  return(round(L,digits))
}

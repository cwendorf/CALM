# Contrast Algorithms for Linear Models
## Basic Functions

### Helper Functions

.Diag <- function(nms, sparse) {
    n <- as.integer(length(nms))
    d <- c(n, n)
    dn <- list(nms, nms)
    if (sparse) {
        if (!suppressPackageStartupMessages(requireNamespace("Matrix"))) 
            stop(gettextf("%s needs package 'Matrix' correctly installed", 
                "contr*(.., sparse=TRUE)"), domain = NA)
        methods::new("ddiMatrix", diag = "U", Dim = d, 
            Dimnames = dn)
    }
    else array(c(rep.int(c(1, numeric(n)), n - 1L), 1), d, dn)
}

.asSparse <- function (m) {
  methods::as(m, "sparseMatrix")
}

.zf <- function(x) {
  m  <- max(n <- nchar(x <- as.character(x)))
  z <- paste(rep(0, m), collapse = "")
  paste0(substring(z, 0, m-n), x)
}

mean_contrasts <- function(M) {
  Mi <- solve(if(nrow(M) == ncol(M)) M else cbind(Ave = 1, M))
  colnames(Mi) <- paste0("m", .zf(1:ncol(Mi)))
}

### Conversion Functions

calm.encode <- function(L) {
  X <- t(L) %*% solve(L %*% t(L))
  rownames(X)=rownames(X,do.NULL=FALSE,prefix="GROUP:")
  colnames(X)=colnames(X,do.NULL=FALSE,prefix="CODE:")
  return(round(X,3))
}

calm.decode <- function(X) {
  L <- solve(t(X) %*% X) %*% t(X)
  rownames(L)=rownames(L,do.NULL=FALSE,prefix="HYPOTHESIS:")
  colnames(L)=colnames(L,do.NULL=FALSE,prefix="GROUP:")    
  return(round(L,3))
}

# Contrast Algorithms for Linear Models
## Contrast: Deviation (Last)

### R Equivalent: contr.sum
### SPSS Equivalent: deviation
### MR Equivalent: effect

### codingMatrices Parallel: deviation

### Original Code: R Base
### Dimnames Code: codingMatrices

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
        dimnames(cont) <- list(1:n, paste0("MD", .zf(2:n)))  
    }
    if(intercept) (cont <- cbind(Int=1,cont))
    cont
}

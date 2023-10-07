# Contrast Algorithms for Linear Models
## Contrast: Treatment

### Contrast: Treatment (First)
### R Equivalent: contr.treatment
### SPSS Equivalent: simple (first)
### MR Equivalent: none
### codingMatrices Equivalent: none
### Original Code: R Base

treatment.first <- function (n, base=1, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
    if (is.numeric(n) && length(n) == 1L) {
        if (n > 1L) 
            levels <- as.character(seq_len(n))
        else stop("not enough degrees of freedom to define contrasts")
    }
    else {
        levels <- as.character(n)
        n <- length(n)
    }
    contr <- .Diag(levels, sparse = sparse)
    if (contrasts) {
        if (n < 2L) 
            stop(gettextf("contrasts not defined for %d degrees of freedom", 
                n - 1L), domain = NA)
        if (base < 1L || base > n) 
            stop("baseline group number out of range")
        contr <- contr[, -base, drop = FALSE]
        colnames(contr) <- paste(levels[-1], levels[1], sep="-")
    }
    if(intercept) (contr <- cbind(Int=1,contr))
    contr
}

### Contrast: Treatment (Last)
### R Equivalent: contr.SAS
### SPSS Equivalent: simple (last)
### MR Equivalent: dummy
### codingMatrices Equivalent: none
### Original Code: R Base

treatment.last <- function (n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
    base <- if (is.numeric(n) && length(n) == 1L) n else length(n)
    cont <- contr.treatment(n, base=base, contrasts=contrasts, sparse=sparse)
    levels <- as.character(seq_len(base))
    colnames(cont) <- paste(n[-base], n[base], sep="-")
    if(intercept) (cont <- cbind(Int=1,cont))
    cont
}

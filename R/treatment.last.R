# Contrast Algorithms for Linear Models
## Contrast: Treatment (Last)

### R Equivalent: contr.SAS
### SPSS Equivalent: simple (last)
### MR Equivalent: dummy

### codingMatrices Parallel: control_last

### Original Code: R Base
### Dimnames Code: codingMatrices

treatment.last <- function (n, intercept=FALSE, contrasts=TRUE, sparse=FALSE) {
    base <- if (is.numeric(n) && length(n) == 1L) n else length(n)
    levels <- as.character(seq_len(n))
    cont <- contr.treatment(n, base=base, contrasts=contrasts, sparse=sparse)
    colnames(cont) <- paste(levels[-n], levels[n], sep="-")
    if(intercept) (cont <- cbind(Int=1,cont))
    cont
}

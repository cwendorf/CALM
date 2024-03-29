# Contrast Algorithms for Linear Models
## Utility Functions

.Diag <- function(nms, sparse) {
  n <- as.integer(length(nms))
  d <- c(n, n)
  dn <- list(nms, nms)
  if (sparse) {
    if (!suppressPackageStartupMessages(requireNamespace("Matrix"))) {
      stop(gettextf(
        "%s needs package 'Matrix' correctly installed",
        "contr*(.., sparse=TRUE)"
      ), domain = NA)
    }
    methods::new("ddiMatrix",
      diag = "U", Dim = d,
      Dimnames = dn
    )
  } else {
    array(c(rep.int(c(1, numeric(n)), n - 1L), 1), d, dn)
  }
}

.asSparse <- function(m) {
  methods::as(m, "sparseMatrix")
}

.zf <- function(x) {
  m <- max(n <- nchar(x <- as.character(x)))
  z <- paste(rep(0, m), collapse = "")
  paste0(substring(z, 0, m - n), x)
}

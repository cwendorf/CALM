# Contrast Algorithms for Linear Models
## Contrast: Polynomial

#' Polynomial Contrast Coding
#'
#' Generates orthogonal polynomial contrast coding.
#' This contrast is used to test for polynomial trends (linear, quadratic, cubic, etc.) across ordered factor levels.
#'
#' @param n An integer specifying the number of levels, or a vector specifying the level names.
#' @param scores Numeric vector of scores to assign to each level; defaults to equally spaced integers.
#' @param intercept Logical. If `TRUE`, includes a column for the intercept.
#' @param contrasts Logical. If `TRUE`, returns contrast codes; if `FALSE`, returns the full matrix including intercept.
#' @param sparse Logical. If `TRUE`, returns the matrix in sparse form using `.asSparse()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is included.
#'
#' @details
#' **Contrast Type**: Polynomial\cr
#' **R Equivalent**: \code{contr.poly}\cr
#' **SPSS Equivalent**: polynomial\cr
#' **MR Equivalent**: polynomial\cr
#' **codingMatrices Equivalent**: poly\cr
#'
#' @note
#' This function is adapted from the base R polynomial contrasts implementation,
#' with added support for sparse matrices and an intercept column.
#'
#' @export
polynomial <- function(n, scores = 1:n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  make.poly <- function(n, scores) {
    y <- scores - mean(scores)
    X <- outer(y, seq_len(n) - 1, "^")
    QR <- qr(X)
    z <- QR$qr
    z <- z * (row(z) == col(z))
    raw <- qr.qy(QR, z)
    Z <- sweep(raw, 2L, apply(raw, 2L, function(x) sqrt(sum(x^2))),
      "/",
      check.margin = FALSE
    )
    colnames(Z) <- paste0("^", 1L:n - 1L)
    Z
  }
  if (is.numeric(n) && length(n) == 1L) {
    levs <- seq_len(n)
  } else {
    levs <- n
    n <- length(levs)
  }
  if (n < 2) {
    stop(gettextf(
      "contrasts not defined for %d degrees of freedom",
      n - 1
    ), domain = NA)
  }
  if (n > 95) {
    stop(gettextf(
      "orthogonal polynomials cannot be represented accurately enough for %d degrees of freedom",
      n - 1
    ), domain = NA)
  }
  if (length(scores) != n) {
    stop("'scores' argument is of the wrong length")
  }
  if (!is.numeric(scores) || anyDuplicated(scores)) {
    stop("'scores' must all be different numbers")
  }
  contr <- make.poly(n, scores)
  if (intercept) (cont <- cbind(Int = 1, cont))
  if (sparse) {
    contr <- .asSparse(contr)
  }
  if (contrasts) {
    dn <- colnames(contr)
    dn[2:min(4, n)] <- c("L", "Q", "C")[1:min(
      3,
      n - 1
    )]
    colnames(contr) <- dn
    contr[, -1, drop = FALSE]
  } else {
    contr[, 1] <- 1
    contr
  }
}

# Contrast Algorithms for Linear Models
## Contrast: Difference

#' Difference Forward Contrast Coding
#'
#' Generates forward difference contrast coding.
#' This type of coding compares each level to the subsequent level in a forward manner.
#'
#' @param n An integer specifying the number of levels, or a character vector specifying the level names.
#' @param intercept Logical. If `TRUE`, includes a column for the intercept.
#' @param contrasts Logical. If `TRUE`, returns contrast codes; if `FALSE`, returns an identity matrix.
#' @param sparse Logical. If `TRUE`, returns the matrix in sparse form using `.asSparse()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
#'
#' @details
#' **Contrast Type**: Difference (Forward)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: diff_forward
#' 
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' It provides forward difference contrasts, which are useful for ordered factor comparisons.
#'
#' @export
difference.forward <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L) {
      levels <- .zf(seq_len(n))
    } else {
      stop("not enough degrees of freedom to define contrasts")
    }
  } else {
    levels <- as.character(n)
    n <- length(n)
  }
  if (!contrasts) {
    B <- diag(n)
    dimnames(B) <- list(1:n, levels)
    if (sparse) B <- .asSparse(B)
    return(B)
  }
  if (max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- 1 - col(matrix(0, n, n))
  ut <- upper.tri(B)
  B[ut] <- n + B[ut]
  B <- B[, -1, drop = FALSE] / n
  dimnames(B) <- list(
    1:n,
    paste(levels[-n], levels[-1], sep = "-")
  )
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

#' Difference Reverse Contrast Coding
#'
#' Generates reverse difference contrast coding.
#' This type of coding compares each level to the previous level in a reverse manner.
#'
#' @param n An integer specifying the number of levels, or a character vector specifying the level names.
#' @param intercept Logical. If `TRUE`, includes a column for the intercept.
#' @param contrasts Logical. If `TRUE`, returns contrast codes; if `FALSE`, returns an identity matrix.
#' @param sparse Logical. If `TRUE`, returns the matrix in sparse form using `.asSparse()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
#'
#' @details
#' **Contrast Type**: Difference (Reverse)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: diff\cr
#'
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' It provides reverse difference contrasts, useful for ordered factor comparisons in reverse order.
#'
#' @export
difference.reverse <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L) {
      levels <- .zf(seq_len(n))
    } else {
      stop("not enough degrees of freedom to define contrasts")
    }
  } else {
    levels <- as.character(n)
    n <- length(n)
  }
  if (!contrasts) {
    B <- diag(n)
    dimnames(B) <- list(1:n, levels)
    if (sparse) B <- .asSparse(B)
    return(B)
  }
  if (max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- col(matrix(0, n, n)) - 1
  ut <- upper.tri(B)
  B[ut] <- B[ut] - n
  B <- B[, -1, drop = FALSE] / n
  dimnames(B) <- list(
    1:n,
    paste(levels[-1], levels[-n], sep = "-")
  )
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

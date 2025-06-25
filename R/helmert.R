# Contrast Algorithms for Linear Models
## Contrast: Helmert

#' Helmert Forward Contrast Coding
#'
#' Generates forward Helmert contrast coding.
#' This contrast compares each level to the mean of the subsequent levels.
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
#' **Contrast Type**: Helmert (Forward)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: helmert\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: helmert_forward
#' 
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' Forward Helmert contrasts are useful for comparing each level to the average of the following levels.
#'
#' @export
helmert.forward <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- rbind(diag(n:2 - 1), 0)
  B[lower.tri(B)] <- -1
  B <- B / rep(n:2, each = n)
  dimnames(B) <- list(1:n, paste0("FH", .zf(2:n - 1)))
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

#' Helmert Reverse Contrast Coding
#'
#' Generates reverse Helmert contrast coding.
#' This contrast compares each level to the mean of the preceding levels.
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
#' **Contrast Type**: Helmert (Reverse)\cr
#' **R Equivalent**: \code{helmert}\cr
#' **SPSS Equivalent**: difference\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: helmert\cr
#'
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' Reverse Helmert contrasts are useful for comparing each level to the average of the preceding levels.
#'
#' @export
helmert.reverse <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- diag(1:n - 1)
  B[upper.tri(B)] <- -1
  B <- B / rep(1:n, each = n)
  B <- B[, -1, drop = FALSE]
  dimnames(B) <- list(1:n, paste0("RH", .zf(2:n)))
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

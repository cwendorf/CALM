# Contrast Algorithms for Linear Models
## Contrast: Repeated

#' Repeated Forward Contrast Coding
#'
#' Generates repeated forward contrast coding.
#' This type of contrast compares each level to the immediately preceding level, moving forward.
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
#' **Contrast Type**: Repeated (Forward)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: contr.diff\cr
#'
#' @note
#' This function is adapted from the `codingMatrices` package.
#' It implements repeated forward contrasts, useful for comparing each level with its predecessor.
#'
#' @export
repeated.forward <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- matrix(0, n, n)
  B[lower.tri(B, diag = TRUE)] <- -1
  B <- B[, -1]
  dimnames(B) <- list(1:n, paste(levels[-n], levels[-1], sep = "-"))
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

#' Repeated Reverse Contrast Coding
#'
#' Generates repeated reverse contrast coding.
#' This contrast compares each level to the immediately succeeding level, moving in reverse order.
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
#' **Contrast Type**: Repeated (Reverse)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: repeated\cr
#' **MR Equivalent**: repeated\cr
#' **codingMatrices Equivalent**: none\cr
#'
#' @note
#' This function is adapted from the `codingMatrices` package.
#' It implements repeated reverse contrasts, useful for comparing each level with its successor.
#'
#' @export
repeated.reverse <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- matrix(0, n, n)
  B[lower.tri(B, diag = TRUE)] <- 1
  B <- B[, -1]
  dimnames(B) <- list(1:n, paste(levels[-1], levels[-n], sep = "-"))
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

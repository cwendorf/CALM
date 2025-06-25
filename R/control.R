# Contrast Algorithms for Linear Models
## Contrast: Control

#' Control First Contrast Coding
#'
#' Generates contrast coding with the first level as the control group.
#' This type of coding is useful for comparing all other groups to a baseline.
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
#' **Contrast Type**: Control (First)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: control
#'
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' It provides control-type contrasts not available in base R, often used in experimental and survey designs.
#'
#' @export
control.first <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- diag(n)
  dimnames(B) <- list(1:n, levels)
  if (!contrasts) {
    if (sparse) B <- .asSparse(B)
    return(B)
  }
  if (max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- B - 1 / n
  B <- B[, -1, drop = FALSE]
  colnames(B) <- paste(levels[-1], levels[1], sep = "-")
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

#' Control Last Contrast Coding
#'
#' Generates contrast coding with the last level as the control group.
#' This type of coding is useful for comparing all other groups against the last (reference) level.
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
#' **Contrast Type**: Control (Last)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: control_last
#'
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' It provides control-type contrasts not available in base R, often used in experimental and survey designs.
#'
#' @export
control.last <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- diag(n)
  dimnames(B) <- list(1:n, levels)
  if (!contrasts) {
    if (sparse) B <- .asSparse(B)
    return(B)
  }
  if (max(nchar(levels)) > 3) {
    levels <- paste0("m", .zf(seq_len(n)))
  }
  B <- B - 1 / n
  B <- B[, -n, drop = FALSE]
  colnames(B) <- paste(levels[-n], levels[n], sep = "-")
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

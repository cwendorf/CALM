# Contrast Algorithms for Linear Models
## Contrast: Deviation

#' Deviation First Contrast Coding
#'
#' Generates deviation contrast coding with the first level as the reference.
#' This contrast type compares each level to the overall mean deviation from the first level.
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
#' **Contrast Type**: Deviation (First)\cr
#' **R Equivalent**: none\cr
#' **SPSS Equivalent**: none\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: deviation_first
#'
#' @note
#' This function is adapted from the original implementation in the `codingMatrices` package.
#' It provides deviation-type contrasts not available in base R, useful for comparing group means
#' relative to the first level.
#'
#' @export
deviation.first <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
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
  B <- rbind(-1, diag(n - 1))
  dimnames(B) <- list(1:n, paste0("MD", .zf(2:n)))
  if (intercept) (B <- cbind(Int = 1, B))
  if (sparse) {
    .asSparse(B)
  } else {
    B
  }
}

#' Deviation Last Contrast Coding
#'
#' Generates deviation contrast coding with the last level as the reference.
#' This contrast compares each level to the overall mean deviation from the last level.
#' This coding is equivalent to R's base `contr.sum`.
#'
#' @param n An integer specifying the number of levels, or a character vector specifying the level names.
#' @param intercept Logical. If `TRUE`, includes a column for the intercept.
#' @param contrasts Logical. If `TRUE`, returns contrast codes; if `FALSE`, returns an identity matrix.
#' @param sparse Logical. If `TRUE`, returns the matrix in sparse form using `.Diag()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
#'
#' @details
#' **Contrast Type**: Deviation (Last)\cr
#' **R Equivalent**: \code{contr.sum}\cr
#' **SPSS Equivalent**: deviation\cr
#' **MR Equivalent**: effect\cr
#' **codingMatrices Equivalent**: deviation\cr
#'
#' @note
#' This function implements the deviation contrast coding similar to R base `contr.sum`.
#' It is adapted for use with sparse matrices and extended functionality.
#'
#' @export
deviation.last <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  if (length(n) <= 1L) {
    if (is.numeric(n) && length(n) == 1L && n > 1L) {
      levels <- seq_len(n)
    } else {
      stop("not enough degrees of freedom to define contrasts")
    }
  } else {
    levels <- n
  }
  levels <- as.character(levels)
  cont <- .Diag(levels, sparse = sparse)
  if (contrasts) {
    cont <- cont[, -length(levels), drop = FALSE]
    cont[length(levels), ] <- -1
    colnames(cont) <- NULL
    # dimnames(cont) <- list(1:n, paste0("MD", .zf(1:(n-1))))
  }
  if (intercept) (cont <- cbind(Int = 1, cont))
  cont
}

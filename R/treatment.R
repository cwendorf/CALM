# Contrast Algorithms for Linear Models
## Contrast: Treatment

#' Treatment (First) Contrast Coding
#'
#' Generates treatment contrast coding using the first level as the baseline.
#'
#' @param n An integer specifying the number of levels, or a character vector of level names.
#' @param base An integer indicating which level to use as the baseline (default is 1).
#' @param intercept Logical. If `TRUE`, includes a column for the intercept.
#' @param contrasts Logical. If `TRUE`, returns contrast codes; if `FALSE`, returns an identity matrix.
#' @param sparse Logical. If `TRUE`, returns the matrix in sparse form using `.asSparse()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
#'
#' @details
#' **Contrast Type**: Treatment (First)\cr
#' **R Equivalent**: \code{contr.treatment}\cr
#' **SPSS Equivalent**: simple (first)\cr
#' **MR Equivalent**: none\cr
#' **codingMatrices Equivalent**: none\cr
#'
#' @note
#' This function is adapted from the base R implementation of treatment contrasts. It uses the first level
#' as the reference category by default and compares all other levels to it.
#'
#' @export
treatment.first <- function(n, base = 1, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  if (is.numeric(n) && length(n) == 1L) {
    if (n > 1L) {
      levels <- as.character(seq_len(n))
    } else {
      stop("not enough degrees of freedom to define contrasts")
    }
  } else {
    levels <- as.character(n)
    n <- length(n)
  }
  contr <- .Diag(levels, sparse = sparse)
  if (contrasts) {
    if (n < 2L) {
      stop(gettextf(
        "contrasts not defined for %d degrees of freedom",
        n - 1L
      ), domain = NA)
    }
    if (base < 1L || base > n) {
      stop("baseline group number out of range")
    }
    contr <- contr[, -base, drop = FALSE]
    colnames(contr) <- paste(levels[-1], levels[1], sep = "-")
  }
  if (intercept) (contr <- cbind(Int = 1, contr))
  contr
}

#' Treatment (Last) Contrast Coding
#'
#' Generates treatment contrast coding using the last level as the baseline.
#'
#' @param n An integer specifying the number of levels, or a character vector of level names.
#' @param intercept Logical. If \code{TRUE}, includes a column for the intercept.
#' @param contrasts Logical. If \code{TRUE}, returns contrast codes; if \code{FALSE}, returns an identity matrix.
#' @param sparse Logical. If \code{TRUE}, returns the matrix in sparse form using `.asSparse()`.
#'
#' @return A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
#' optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
#'
#' @details
#' **Contrast Type**: Treatment (Last)\cr
#' **R Equivalent**: \code{contr.SAS}\cr
#' **SPSS Equivalent**: simple (last)\cr
#' **MR Equivalent**: dummy\cr
#' **codingMatrices Equivalent**: none\cr
#'
#' @note
#' This function is adapted from the base R implementation of treatment contrasts. It uses the last level
#' as the reference category and compares all other levels to it.
#'
#' @export
treatment.last <- function(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE) {
  base <- if (is.numeric(n) && length(n) == 1L) n else length(n)
  cont <- contr.treatment(n, base = base, contrasts = contrasts, sparse = sparse)
  colnames(cont) <- paste(n[-base], n[base], sep = "-")
  if (intercept) (cont <- cbind(Int = 1, cont))
  cont
}

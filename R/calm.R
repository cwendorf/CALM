# Contrast Algorithms for Linear Models
## Conversion Functions

#' Encode Hypothesis Matrix into Coding Matrix
#'
#' Transforms a hypothesis matrix \code{L} into its corresponding coding matrix.
#'
#' @param L A numeric hypothesis matrix (typically of size \code{g x h} where \code{g} is the number of groups).
#' @param digits Integer. Number of decimal places to round the result. Defaults to 4.
#'
#' @return A numeric matrix representing the coded design matrix. Row names are labeled \code{"GROUP #"}, and column names as \code{"CODE #"}.
#'
#' @details
#' This function uses the Moore–Penrose inverse of \code{L} to compute the coding matrix.
#' It provides a contrast matrix that can be used for statistical model estimation.
#'
#' @export
calm.encode <- function(L, digits = 4) {
  X <- t(L) %*% solve(L %*% t(L))
  rownames(X) <- rownames(X, do.NULL = FALSE, prefix = "GROUP ")
  colnames(X) <- colnames(X, do.NULL = FALSE, prefix = "CODE ")
  return(round(X, digits))
}

#' Decode Coding Matrix into Hypothesis Matrix
#'
#' Recovers the hypothesis matrix from a coded contrast matrix.
#'
#' @param X A coded matrix (typically output from \code{\link{calm.encode}}).
#' @param digits Integer. Number of decimal places to round the result. Defaults to 4.
#'
#' @return A numeric matrix representing the decoded hypothesis matrix. Row names are labeled \code{"HYPOTH #"}, and column names as \code{"GROUP #"}.
#'
#' @details
#' This function inverts the encoding process via least-squares pseudoinverse. 
#' This reconstructs a hypothesis matrix from the coding matrix.
#'
#' @export
calm.decode <- function(X, digits = 4) {
  L <- solve(t(X) %*% X) %*% t(X)
  rownames(L) <- rownames(L, do.NULL = FALSE, prefix = "HYPOTH ")
  colnames(L) <- colnames(L, do.NULL = FALSE, prefix = "GROUP ")
  return(round(L, digits))
}

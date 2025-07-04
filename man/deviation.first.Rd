% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deviation.R
\name{deviation.first}
\alias{deviation.first}
\title{Deviation First Contrast Coding}
\usage{
deviation.first(n, intercept = FALSE, contrasts = TRUE, sparse = FALSE)
}
\arguments{
\item{n}{An integer specifying the number of levels, or a character vector specifying the level names.}

\item{intercept}{Logical. If \code{TRUE}, includes a column for the intercept.}

\item{contrasts}{Logical. If \code{TRUE}, returns contrast codes; if \code{FALSE}, returns an identity matrix.}

\item{sparse}{Logical. If \code{TRUE}, returns the matrix in sparse form using \code{.asSparse()}.}
}
\value{
A contrast matrix of size \code{n x (n - 1)} (or \code{n x n} if \code{contrasts = FALSE}),
optionally in sparse format. If \code{intercept = TRUE}, a column of 1s is prepended to the matrix.
}
\description{
Generates deviation contrast coding with the first level as the reference.
This contrast type compares each level to the overall mean deviation from the first level.
}
\details{
\strong{Contrast Type}: Deviation (First)\cr
\strong{R Equivalent}: none\cr
\strong{SPSS Equivalent}: none\cr
\strong{MR Equivalent}: none\cr
\strong{codingMatrices Equivalent}: deviation_first
}
\note{
This function is adapted from the original implementation in the \code{codingMatrices} package.
It provides deviation-type contrasts not available in base R, useful for comparing group means
relative to the first level.
}

% File man/differenceforward.Rd
% Part of the CALM package

\name{difference.forward}
\alias{difference.forward}
\title{Contrast: Difference: Forward}
\description{Create difference contrasts comparing each level to the next level}

\usage{
\method{difference.forward}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
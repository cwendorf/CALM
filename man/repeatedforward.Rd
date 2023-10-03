% File man/repeatedforward.Rd
% Part of the CALM package

\name{repeated.forward}
\alias{repeated.forward}
\title{Contrast: Repeated: Forward}
\description{Create repeated contrasts comparing each level to the next level and the intercept equaling the mean of the first level.}

\usage{
\method{repeated.forward}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
% File man/repeatedreverse.Rd
% Part of the CALM package

\name{repeated.reverse}
\alias{repeated.reverse}
\title{Contrast: Repeated: Reverse}
\description{Create repeated contrasts comparing each level to the previous level and the intercept equaling the mean of the last level.}

\usage{
\method{repeated.reverse}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
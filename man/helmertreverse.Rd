% File man/helmertreverse.Rd
% Part of the CALM package

\name{helmert.reverse}
\alias{helmert.reverse}
\title{Contrast: Helmert: Reverse}
\description{Create Helmert contrasts comparing each level to mean of the the previous levels and the intercept equaling the mean of all levels.}

\usage{
\method{helmert.reverse}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
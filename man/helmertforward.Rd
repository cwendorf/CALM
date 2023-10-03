% File man/helmertforward.Rd
% Part of the CALM package

\name{helmert.forward}
\alias{helmert.forward}
\title{Contrast: Helmert: Forward}
\description{Create Helmert contrasts comparing each level to mean of the subsequent levels and the intercept equaling the mean of all levels.}

\usage{
\method{helmert.forward}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
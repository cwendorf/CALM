% File man/differencereverse.Rd
% Part of the CALM package

\name{difference.reverse}
\alias{difference.reverse}
\title{Contrast: Difference: Reverse}
\description{Create difference contrasts comparing each level to the previous level}

\usage{
\method{difference.reverse}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
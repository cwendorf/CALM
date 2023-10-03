% File man/controlfirst.Rd
% Part of the CALM package

\name{control.first}
\alias{control.first}
\title{Contrast: Control: First}
\description{Create control contrasts with first level as the reference and the intercept equaling the mean of the first level.}

\usage{
\method{control.first}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
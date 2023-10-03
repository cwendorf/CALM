% File man/controllast.Rd
% Part of the CALM package

\name{control.last}
\alias{control.last}
\title{Contrast: Control: Last}
\description{Create control contrasts with last level as the reference and the intercept equaling the mean of the last level.}

\usage{
\method{control.last}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
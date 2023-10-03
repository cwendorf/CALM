% File man/deviationlast.Rd
% Part of the CALM package

\name{deviation.last}
\alias{deviation.last}
\title{Contrast: Deviation: Last}
\description{Create deviation contrasts with last level as the reference and the intercept equaling the mean of all levels.}

\usage{
\method{deviation.last}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
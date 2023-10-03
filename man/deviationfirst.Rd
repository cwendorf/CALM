% File man/deviationfirst.Rd
% Part of the CALM package

\name{deviation.first}
\alias{deviation.first}
\title{Contrast: Deviation: First}
\description{Create deviation contrasts with first level as the reference and the intercept equaling the mean of all levels.}

\usage{
\method{deviation.first}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
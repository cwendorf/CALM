% File man/treatmentlast.Rd
% Part of the CALM package

\name{treatment.last}
\alias{treatment.last}
\title{Contrast: Treatment: Last}
\description{Create treatment contrasts with last level as the reference and the intercept equaling the mean of the last level.}

\usage{
\method{treatment.last}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
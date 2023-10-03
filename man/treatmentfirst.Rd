% File man/treatmentfirst.Rd
% Part of the CALM package

\name{treatment.first}
\alias{treatment.first}
\title{Contrast: Treatment: First}
\description{Create treatment contrasts with first level as the reference and the intercept equaling the mean of the first level.}

\usage{
\method{treatment.first}{default}(n,intercept=FALSE,contrasts=TRUE,sparse=FALSE)
}

\arguments{
\item{n}{number of levels of the factor}
\item{intercept}{whether the intercept should be included in the matrix}
\item{contrasts}{whether the resulting matrix should be a coding matrix}
\item{sparse}{whether the resulting matrix should be a sparse matrix}
}
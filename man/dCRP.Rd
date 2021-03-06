% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{dCRP}
\alias{dCRP}
\title{Compute Probability Mass of a Partition Under the Two Parameter Chinese
Restaurant Process (CRP)}
\usage{
dCRP(partition, mass = 1, discount = 0, log = FALSE)
}
\arguments{
\item{partition}{A numeric vector of cluster labels, or a matrix whose rows
are numeric vectors of cluster labels}

\item{mass}{A numeric value indicating the mass parameter in the CRP, which
must be greater than the \code{-discount} argument}

\item{discount}{A numeric value on the interval [0,1), indicating the
discount parameter of the two parameter CRP}

\item{log}{A logical value indicating whether results should be returned on
the log scale}
}
\value{
A numeric vector of probabilities, or log probabilities if \code{log
  = TRUE}.
}
\description{
Compute Probability Mass of a Partition Under the Two Parameter Chinese
Restaurant Process (CRP)
}
\examples{

partitions <- matrix(c(0,0,0,0,0,
                       0,0,0,0,1,
                       0,0,0,1,2,
                       0,0,1,2,3,
                       0,1,2,3,4), ncol = 5, nrow = 5, byrow = TRUE)

# discount = 0 shows higher probability for lower quantity of components
dCRP(partitions, mass = 1, discount = 0, log = FALSE)

# discount = 0.5 shows higher probability for higher quantity of components
dCRP(partitions, mass = 1, discount = 0.5, log = FALSE)
}

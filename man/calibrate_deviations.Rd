% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core-outopn-calibrate.R
\name{calibrate_deviations}
\alias{calibrate_deviations}
\title{Quantitative calibration, through deviations, for Out and Opn objects}
\usage{
calibrate_deviations(x, method, id, range, norm.centsize, dist.method,
  dist.nbpts)
}
\arguments{
\item{x}{and \code{Out} or \code{Opn} object on which to calibrate_deviations}

\item{method}{any method from \code{c('efourier', 'rfourier', 'tfourier')} and
\code{'dfourier'}.}

\item{id}{the shape on which to perform calibrate_deviations}

\item{range}{vector of harmonics (or degree for opoly and npoly on Opn) on which to perform calibrate_deviations.
If not provided, the harmonics corresponding to 0.9, 0.95 and 0.99% of harmonic power
are used.}

\item{norm.centsize}{logical whether to normalize deviation by the centroid size}

\item{dist.method}{a method such as \link{edm_nearest} to calculate deviations}

\item{dist.nbpts}{numeric the number of points to use for deviations calculations}
}
\value{
a ggplot object
}
\description{
Calculate deviations from original and reconstructed shapes using a
range of harmonic number.
}
\details{
For *poly methods on Opn objects, the deviations are calculated from a degree 12 polynom.
}
\examples{
data(bot)
calibrate_deviations(bot)
\dontrun{

# on Opn
data(olea)
camibrate_deviations(olea)

# lets customize the ggplot
library(ggplot2)
gg <- calibrate_deviations(bot, id=1:20)$gg
gg + geom_hline(yintercept=c(0.001, 0.005), linetype=3)
gg + labs(col="Number of harmonics", fill="Number of harmonics",
           title="Harmonic power") + theme_bw()
gg + coord_polar()
}
}
\seealso{
Other calibration: \code{\link{calibrate_harmonicpower}},
  \code{\link{calibrate_r2}},
  \code{\link{calibrate_reconstructions}}
}


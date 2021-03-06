% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coo-utilities.R
\name{coo_alignxax}
\alias{coo_alignxax}
\title{Aligns shapes along the x-axis}
\usage{
coo_alignxax(coo)
}
\arguments{
\item{coo}{a \code{matrix} of (x; y) coordinates or a \code{list}, or any \link{Coo} object.}
}
\value{
a \code{matrix} of (x; y) coordinates, or any \link{Coo} object.
}
\description{
Align the longest axis of a shape along the x-axis.
}
\details{
If some shapes are upside-down
(or mirror of each others), try redefining a new starting point (eg with coo_slidedirection) before
the alignment step. This may solve your problem because coo_calliper orders the \code{$arr.ind} used by
coo_aligncalliper.
}
\examples{
\dontrun{
b <- bot[1]
coo_plot(b)
coo_plot(coo_alignxax(b))
}
}
\seealso{
Other aligning functions: \code{\link{coo_aligncalliper}},
  \code{\link{coo_alignminradius}}, \code{\link{coo_align}}

Other coo_ utilities: \code{\link{coo_aligncalliper}},
  \code{\link{coo_alignminradius}},
  \code{\link{coo_align}}, \code{\link{coo_baseline}},
  \code{\link{coo_bookstein}}, \code{\link{coo_calliper}},
  \code{\link{coo_centdist}}, \code{\link{coo_center}},
  \code{\link{coo_centpos}}, \code{\link{coo_centsize}},
  \code{\link{coo_close}}, \code{\link{coo_down}},
  \code{\link{coo_dxy}}, \code{\link{coo_extract}},
  \code{\link{coo_flipx}}, \code{\link{coo_force2close}},
  \code{\link{coo_interpolate}}, \code{\link{coo_jitter}},
  \code{\link{coo_left}}, \code{\link{coo_nb}},
  \code{\link{coo_perimcum}}, \code{\link{coo_perimpts}},
  \code{\link{coo_perim}}, \code{\link{coo_rev}},
  \code{\link{coo_right}}, \code{\link{coo_rotatecenter}},
  \code{\link{coo_rotate}}, \code{\link{coo_samplerr}},
  \code{\link{coo_sample}}, \code{\link{coo_scalex}},
  \code{\link{coo_scale}}, \code{\link{coo_shearx}},
  \code{\link{coo_slice}},
  \code{\link{coo_slidedirection}},
  \code{\link{coo_slidegap}}, \code{\link{coo_slide}},
  \code{\link{coo_smoothcurve}}, \code{\link{coo_smooth}},
  \code{\link{coo_template}}, \code{\link{coo_trans}},
  \code{\link{coo_trim}}, \code{\link{coo_up}},
  \code{\link{is_closed}}
}


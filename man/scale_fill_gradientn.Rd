% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scales.R
\name{scale_fill_gradientn}
\alias{scale_fill_gradientn}
\title{Continuous fill scale that aligns with the RSN style}
\usage{
scale_fill_gradientn(
  ...,
  colours = c("#002f61", "#0e3b63", "#164866", "#1c5468", "#1f616a", "#216f6c",
    "#207c6e", "#1e8a6f"),
  colors = c("#002f61", "#0e3b63", "#164866", "#1c5468", "#1f616a", "#216f6c", "#207c6e",
    "#1e8a6f"),
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar"
)
}
\arguments{
\item{...}{other arguments passed to \code{discrete_scale()}}

\item{colours}{vector of colours}

\item{colors}{vector of colours}

\item{values}{if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1}

\item{space}{colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.}

\item{na.value}{default color for NA values}

\item{guide}{legend representation of scale}
}
\description{
Continuous fill scale that aligns with the RSN style
}

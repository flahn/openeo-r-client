% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/argument_types.R
\name{ProcessGraphArgument}
\alias{ProcessGraphArgument}
\title{ProcessGraphArgument}
\value{
Object of \code{\link{R6Class}} which represents a ProcessGraph.
}
\description{
Inheriting from \code{\link{Argument}} in order to represent a ProcessGraph (prior known as callback). The ProcessGraph operates on reduced data
of a data cube. For example reducing the time dimension results in a time series that has to be reduced into a
single value. The value of a ProcessGraph is usually a \code{\link{Graph}} with \code{\link{ProcessGraphParameter}} as 
injected data. Hints from the openeo api documention:
\itemize{
  \item \url{https://open-eo.github.io/openeo-api/#section/Processes/Process-Graphs}
  \item \url{https://open-eo.github.io/openeo-api/v/0.4.2/processgraphs/#callbacks}
}
}
\section{Methods}{

\describe{
  \item{\code{$getProcessGraphParameters()}}{returns the available list \code{\link{ProcessGraphParameter}}}
  \item{\code{$setProcessGraphParameters(parameters)}}{assigns a list of \code{\link{ProcessGraphParameter}} to the ProcessGraph}
}
}

\section{Arguments}{

\describe{
  \item{\code{parameters}}{the list \code{\link{ProcessGraphParameter}}}
}
}

\seealso{
\code{\link{Array}}, \code{\link{Integer}}, \code{\link{EPSGCode}}, \code{\link{String}}, \code{\link{Number}}, 
\code{\link{Date}}, \code{\link{RasterCube}}, \code{\link{VectorCube}}, \code{\link{ProcessGraphArgument}}, 
\code{\link{ProcessGraphParameter}}, \code{\link{OutputFormatOptions}}, \code{\link{GeoJson}},
\code{\link{Boolean}}, \code{\link{DateTime}}, \code{\link{Time}}, \code{\link{BoundingBox}}, \code{\link{Kernel}}, 
\code{\link{TemporalInterval}}, \code{\link{TemporalIntervals}}, \code{\link{CollectionId}}, \code{\link{OutputFormat}},
\code{\link{AnyOf}}, \code{\link{ProjDefinition}}, \code{\link{UdfCodeArgument}}, \code{\link{UdfRuntimeArgument}} and 
\code{\link{UdfRuntimeVersionArgument}}
}

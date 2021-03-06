% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predefined_processes.R
\name{list_processes}
\alias{list_processes}
\title{List available processes on server}
\usage{
list_processes(con = NULL)
}
\arguments{
\item{con}{Connection object (optional) otherwise \code{\link{active_connection}}
is used.}
}
\value{
a list of lists with process_id and description
}
\description{
list all processes available on the back-end
}

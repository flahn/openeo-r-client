% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process_graph_building.R
\name{Graph}
\alias{Graph}
\title{Graph object}
\value{
Object of \code{\link{R6Class}} with methods for building an openeo process graph
}
\description{
This class represents an openeo process graph. It consists of \code{\link{ProcessNode}}s and optional \code{\link{ProcessGraphParameter}}. The 
creation of a Graph is not required in most cases, because this will otherwise be done automatically in those function that have
to send a Graph representation to the openEO service. In those cases you can pass on a function that results a ProcessNode or a 
result node itself.
}
\details{
However, you might want to perform an explicit cast with \code{as(x,"Graph")} in order to obtain a Graph object. 'x' can be the afore
mentioned function or ProcessNode, and also a ProcessGraph object that can be obtained by \code{\link{describe_user_process}}, which
parses the stored Graph representation into an openEO Graph object (\code{\link{parse_graph}}).
}
\section{Fields}{

\describe{
\item{\code{data}}{a named list of collection ids or process graph parameters depending on the context}
}}

\section{Methods}{

\describe{
   \item{\code{$new(con = NULL, final_node=NULL)}}{The object creator created from processes and available data.}
   \item{$getNodes()}{a function to return a list of created \code{\link{ProcessNode}}s for this graph}
   \item{$serialize()}{creates a list representation of the graph by recursively calling \code{$serialize}} 
   \item{$validate()}{runs through the nodes and checks the validity of its argument values}
   \item{$getNode(node_id)}{searches and returns a node from within the graph referenced by its node id}
   \item{$addNode(node)}{}
   \item{$removeNode(node_id)}{removes a process node from the graph}
   \item{$getFinalNode()}{gets the result process node of a process graph}
   \item{$setFinalNode(node)}{sets the result process node by node id or a ProcessNode}
   \item{$getVariables()}{creates a named list of the defined variables of a process graph}
   \item{$setVariables(list_of_vars)}{sets the process graph parameter (variables) of graph}
}
}

\section{Arguments}{

\describe{
   \item{con}{openeo connection (optional) otherwise \code{\link{active_connection}} is used.}
   \item{final_node}{optional the final node (end node) that was used to create a graph}
   \item{node_id}{the id of a process node}
   \item{node}{process node or  its node id}
   \item{parameter}{the name of a parameter in a process}
   \item{value}{the value to be set for a parameter of a paricular process}
   \item{id or variable_id}{the variable id}
   \item{description}{a description field for a variable}
   \item{type}{the type of variable, default 'string'}
   \item{default}{optional default value to be set for a variable}
}
}

\examples{
\dontrun{
con = connect(host="http://some.url.org/openeo")
p = processes()
...
result = p$save_result(data = prior_step, format = "PNG")
graph = as(result, "Graph")

# alternative with a function (R primitve operator are translated into openEO processes)
resulting_ndvi_function = function(x) {
 B4 = x[1]
 B8 = x[2]

 return((B8-B4)/(B8+B4))
} 

graph = as(resulting_ndvi_function, "Graph")
}
}

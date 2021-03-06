% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fastMap.R
\name{fastMap}
\alias{fastMap}
\title{Map an ID to its associated HGNC gene symbol.}
\usage{
fastMap(ID, hashTable, type = "UniProt", quietly = FALSE, dev = FALSE)
}
\arguments{
\item{ID}{a vector of IDs to be mapped.}

\item{hashTable}{the hash table to perform lookups on.}

\item{type}{the type of the unmapped ID.}

\item{quietly}{logical. If FALSE, a warning is generated if IDs
could not be mapped.}

\item{dev}{logical. For development only. If TRUE, all checks are made
but instead of actually mapping, the original IDs are returned.}
}
\value{
the mapped HGNC symbol or \code{ID} if not found.
}
\description{
\code{fastMap} accesses the associated hash table
(\code{fastMapUniProt} for UniProt IDs or
\code{fastMapUniENSP} for Ensembl protein IDs) and returns the
associated HGNC gene symbol. Unmapped IDs will be returned as is and
will be stored in an global option \code{rete.unmapped}.
}
\examples{
\dontrun{
fastMap("ENSG00000121410", fastMapENSP, type = "ENSP")
fastMap(c("Q9NQ94", "P01023"), fastMapUniProt)
}
}
\seealso{
Other fastMap functions: \code{\link{fastMapGenerate}},
  \code{\link{fastMapSanity}}, \code{\link{fastMapUpdate}}
}

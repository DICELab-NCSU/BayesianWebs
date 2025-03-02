% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_counts_obs.R
\name{plot_counts_obs}
\alias{plot_counts_obs}
\title{Plot heatmap of observed counts}
\usage{
plot_counts_obs(mat = NULL, ...)
}
\arguments{
\item{mat}{A matrix with count data reporting interaction frequency
(e.g. visits to flowers, number of fruits consumed per plant or species).
Plants must be in rows, Animals must be in columns.}

\item{...}{Further arguments for \code{\link[network.tools:plot_web_heatmap]{network.tools::plot_web_heatmap()}}.}
}
\value{
A ggplot object
}
\description{
Plot heatmap of observed counts
}
\examples{
data(web)
plot_counts_obs(web)
plot_counts_obs(web, sort = FALSE)
plot_counts_obs(web, zero.na = FALSE, sort = FALSE)
}

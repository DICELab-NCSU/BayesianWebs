% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict_counts.R
\name{predict_counts}
\alias{predict_counts}
\title{Predict interaction counts}
\usage{
predict_counts(fit = NULL, data = NULL)
}
\arguments{
\item{fit}{Fitted model}

\item{data}{Data list}
}
\value{
A data frame
}
\description{
Generate the posterior predictive distribution of counts for every pairwise
interaction.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
data(web)
dt <- prepare_data(mat = web, plant_effort = rep(20, nrow(web)))
fit <- fit_model(dt, refresh = 0)
predict_counts(fit, dt)
\dontshow{\}) # examplesIf}
}

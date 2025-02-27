#' Extract pointwise log-likelihood from bipartite model
#'
#' @param fit Fitted model (from [fit_model()])
#' @param ... Additional arguments passed to [cmdstanr::as_draws()].
#'
#' @return An object of class `draws_matrix`. See [posterior::draws_matrix()] for details.
#' @import cmdstanr
#' @export
#'
#' @examplesIf interactive()
#' data(web)
#' dt <- prepare_data(mat = web, plant_effort = rep(20, nrow(web)))
#' fit <- fit_model(dt)
#' ll <- log_lik(fit)
#'
#'
log_lik <- function(fit, ...) {
  if (!"CmdStanFit" %in% class(fit)) stop("'fit' must be a CmdStanFit fitted model object.")
  fit$draws(variables = "log_lik", format = "matrix", ...)
}

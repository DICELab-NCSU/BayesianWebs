#' Extract pointwise log-likelihood from bipartite model
#'
#' @param fit Fitted model (from [fit_model()])
#' @param ... Additional arguments passed to [cmdstanr::as_draws()].
#'
#' @return An object of class `draws_matrix`. See [posterior::draws_matrix()] for details.
#' @importFrom posterior as_draws
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
  fit$draws(variables = "log_lik", format = "matrix", ...)
}

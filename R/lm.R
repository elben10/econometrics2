#' Estimating Linear Regressions
#'
#' @description Hello
#'
#' @param data A data.frame or tibble
#' @param formula An object of class \code{\link[stats]{formula}}
#'
#' @export
#'
eco_lm <- function(data, formula) {
  if (!is.data.frame(data)) {
    abort("Data should be a data.frame")
  }
  res <- lm(formula = formula, data = data)
  class(res) <- c("eco_lm", class(res))
  res
}

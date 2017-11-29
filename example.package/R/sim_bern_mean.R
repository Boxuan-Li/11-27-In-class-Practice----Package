#' Function that Simulates
#'
#' from a different data generating mechanism and edit simulate_nrep to
#' work with both simulation functions
#'
#' @param n_samp
#' @param prob
#'
#' @return
#' @export
#' @import dplyr
#' @import purrr
#' @import janitor
#' @examples
sim_bern_mean = function(n_samp, prob) {

  sim_data = tibble(
    y = rbinom(n_samp, 1, prob)
  )

  tibble(
    n = n_samp,
    samp_avg = mean(sim_data$y)
  )
}

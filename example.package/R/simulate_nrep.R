#' Title
#'
#' @param n_rep
#' @param sim_func
#'
#' @return
#' @export
#'
#'
#' @import dplyr
#' @import purrr
#' @import janitor
#'
#' @examples
simulate_nrep = function(n_rep, sim_func, ...) {

  rerun(n_rep, sim_func(...)) %>%
    bind_rows()

}

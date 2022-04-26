
#' qcensus
#' 
#' Calculate number of people in the US population for a given range of years and ages
#' @param yearz int or vector of years to calculate 2016 - 2060
#' @param agez int or vector of ages to calculate 0 - 100
#' @export
#' @examples
#' qcensus(yearz = 2016:2017, agez = 0:100)
#' @importFrom dplyr select
qcensus <- function(yearz, agez){
  if(!all(yearz %in% unique(census$year))) 
    stop(paste0("You selected a year that is not in the dataset. Years span from ", min(census$year), " to ", max(census$year)))
  if (!all(agez %in% seq(0, 100))) {
    stop(paste0("You selected an age that is not in the dataset. Ages span from ", 0, " to ", 100))
  }

  census %>%
    subset(year %in% yearz) %>%
    select(c(paste0("pop_", agez))) %>%
    rowSums()
}
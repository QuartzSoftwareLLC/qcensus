
#' qcensus
#' 
#' Calculate number of people in the US population for a given range of years and ages
#' @param yearz list of years to calculate 2016 - 2060
#' @param agez list of ages to calculate 0 - 100
#' @export
#' @examples
#' qcensus(yearz = c(2016, 2017), agez = c(0, 100))
#' @importFrom dplyr select
qcensus <- function(yearz, agez){
  if(!(yearz %in% unique(census$year))) 
    stop(paste0("You selected a year that is not in the dataset. Years span from ", min(census$year), " to ", max(census$year)))

  if(!(agez %in% unique(census$age))) 
    stop(paste0("You selected an age that is not in the dataset. Ages span from ", min(census$age), " to ", max(census$age)))

  census %>%
    subset(year %in% yearz) %>%
    select(c(paste0("pop_", agez))) %>%
    rowSums()
}
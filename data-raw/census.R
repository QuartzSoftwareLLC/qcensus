## code to prepare `census` dataset goes here
library(tidyverse)

census <- vroom::vroom("https://www2.census.gov/programs-surveys/popproj/datasets/2017/2017-popproj/np2017_d1_mid.csv")


census  %>%
  janitor::clean_names() %>%
  subset(sex == 0 & origin == 0 & race == 0) -> census

usethis::use_data(census, overwrite = TRUE, internal = T)







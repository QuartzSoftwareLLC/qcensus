<div style="display: flex; justify-content: center;"><img href="https://quartzsoftware.com" src="https://quartzsoftware-assets.s3.amazonaws.com/logo.svg" height="100"/><img src="./logo.svg" height="100"/></div>

# qcensus
  <!-- badges: start -->
  [![R-CMD-check](https://github.com/QuartzSoftwareLLC/qcensus/workflows/R-CMD-check/badge.svg)](https://github.com/QuartzSoftwareLLC/qcensus/actions)
  <!-- badges: end -->

Get census data across age groups from 2016 to 2060

## Installation 

```{R}
remotes::install_github("quartzsoftwarellc/qcensus")
```

## Usage


```{R}
qcensus::qcensus(c(2020), c(18,50))
```

```{R}
[1] 8512795
```
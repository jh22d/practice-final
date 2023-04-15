library(tidyverse)
library(here)
library(ggplot2)

source(here('R/01-loadnclean.R'))
source(here('R/02-dataviz.R'))

# The cleaned Data is as follow:

family_bkstatus  = read_csv(here('results/family_bkstatus.csv'))
head(family_bkstatus)


# The Data Viz is as follow:
## (viz)[here('results/family_bkstatus.csv')]

# Conclusion
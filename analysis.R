library(tidyverse)
library(here)
library(ggplot2)

rsvn = read.csv(here('data/Hotel-Reservations.csv'))

family_stays = rsvn %>%
  filter(no_of_adults != 0 & no_of_children != 0) %>%
  mutate(night_total = no_of_weekend_nights + no_of_week_nights) %>%
  select(night_total, booking_status)
head(family_stays)

family_plot = family_stays %>%
  ggplot(aes(x = night_total, fill = booking_status)) +
  geom_histogram() +
  facet_grid(rows = vars(booking_status))+
  labs(title = 'Nights Booked by Family',
       x = 'Number of Nights Stayed',
       y = 'Counts')
family_plot


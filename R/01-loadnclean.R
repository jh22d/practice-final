source(here('R/family_stays.R'))

family_bkstatus = family_stays(no_of_adults, 
             no_of_children, 
             no_of_weekend_nights, 
             no_of_week_nights, 
             booking_status)
write_csv(family_bkstatus, here('results/family_bkstatus.csv'))
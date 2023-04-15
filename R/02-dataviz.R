source(here('R/family_plot.R'))

my_gph = family_plot(family_bkstatus, 
            night_total, 
            booking_status, 
            'Nights Booked by Family', 
            'Number of Nights Stayed', 
            'Counts')
ggsave(here("results/graph.png"),
       plot = my_gph,
       device = "png"
)
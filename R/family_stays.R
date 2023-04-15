#' Title Manipulation on the Hotel Reservations
#'
#' @param pos_col1 Column with only positive values keepped
#' @param pos_col2 Column with only positive values keepped
#' @param night1 Column recording the number of nights reserved
#' @param night2 Column recording the number of nights reserved
#' @param target Predicted variables
#'
#' @return Data frame with 2 columns only

#' @export
#'
#' @examples
#' family_stays(no_of_adults, no_of_children, no_of_weekend_nights, no_of_week_nights, booking_status)

family_stays = function(pos_col1, pos_col2, night1, night2, target){
  rsvn = read.csv(here('data/Hotel-Reservations.csv'))
  tidy_rsvn = rsvn %>%
    filter({{pos_col1}} != 0 & {{pos_col2}} != 0) %>%
    mutate(night_total = {{night1}} + {{night2}}) %>%
    select(night_total, {{target}})
  return(tidy_rsvn)
}


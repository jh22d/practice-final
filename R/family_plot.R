#' Title Plot histogram of given data frame
#'
#' @param df sdf
#' @param x gfh
#' @param hfill jkl
#' @param htitle wer
#' @param xlab rty
#' @param ylab yuyi
#'
#' @return a unly histogram which literatlly makes nonsense
#' @export
#'
#' @examples
#' family_plot(family_bkstatus, night_total, booking_status, 'Nights Booked by Family', 'Number of Nights Stayed', 'Counts')

family_plot = function(df, x, hfill, htitle = '',xlab = '',ylab =''){
  plt = ggplot(df, aes(x={{x}}, fill = {{htitle}}))+
  geom_histogram() +
  #    facet_wrap(~hfill)+
  labs(title = htitle,
       x = xlab,
       y = ylab)
  return(plt)
}
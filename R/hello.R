#' My Greeting Function
#'
#' This function grrets the conference participant.
#'
#' @param name participant name.
#'
#' @return Greeting of participant.
#' @export
#'
#' @note This function is a bit boring but that is ok.
#'
#' @examples
#' hello("Dorothee")

hello <- function(name) {
  checkmate::assertCharacter(name)
  greeting <- ifelse(is.na(name),
                           NA,
                           paste0("Hello, ", name, " welcome to Basel!"))
  return(greeting)
}


#' My weather Function
#'
#' This function provides a random weather forecast.
#'
#'
#' @return Forecast.
#' @export
#'
#' @note Take this weather forecast with a grain of salt.
#' @seealso Check Google for a more correct forecast.
#'
#' @examples
#' weather()

weather <- function() {
  zeus <- sample(c(1, 2, 3, 4), 1)
  forecast <- ifelse(zeus == 1,
    "Great sunny wheather today!",
    ifelse(zeus == 2,
      "Partly cloudy today.",
      ifelse( zeus==3,
      "Thunderstorm today, sorry...",
      "Let's build a snowman!"
    )
    )
  )
  return(forecast)
}

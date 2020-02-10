#
#' @title Launch Respondents Satisfaction Index Analysis Apps
#'
#' @description Shiny app will opened on your default browser
#'
#' @param port The TCP port that the application should listen on. Defaults to choosing a random port.
#' @param launch.browser If true, the system's default web browser will be launched automatically after the app is started. Defaults to true in interactive sessions only.
#' @param host The IPv4 address that the application should listen on. Defaults to the shiny.host option, if set, or "127.0.0.1" if not.
#' @param display.mode The mode in which to display the example. Defaults to showcase, but may be set to normal to see the example without code or commentary.
#'
#' @import shiny
#' @import bs4Dash
#' @import shinyWidgets
#' @import ggplot2
#' @import plotly
#' @import readxl
#'
#' @examples \donttest{
#' launch()
#' }
#'
#' @export
launch <- function(launch.browser = getOption("shiny.launch.browser", interactive()),
                   port = NULL, host = getOption("shiny.host", "127.0.0.1"),
                   display.mode = c("auto", "normal", "showcase")) {
  appDir <- system.file("app", "ipacsi", package = "ipacsi")
  if (appDir == "") {
    stop("Could not find the apps Try re-installing `ipacsi` package.", call. = FALSE)
  }

  shiny::runApp(appDir, port = port, host = host, launch.browser = launch.browser,
                display.mode = display.mode)
}

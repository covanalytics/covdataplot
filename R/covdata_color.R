

#' covdata_color
#'
#' @description  This function allows you to access the HEX color code
#' options in 'covington_colors' by name in applying color or fill ggplot aesthetics.
#' It is best to access this variable to apply color to the data
#' components of the graphics plot (i.e., points, bars, lines, etc.)
#' when only one color is needed.
#' @param ... Accepts the color name in 'covington_colors'
#' @keywords covdata_color

#' @examples
#' ggplot +
#' geom_bar(stat = "identity",
#'         fill = covdata_color("Covington.Blue"))

#' @export
covdata_color <- function(...) {
  cols <- c(...)
  if (is.null(cols)) {
    return (covington_colors)

  } else
    covington_colors[cols]
}

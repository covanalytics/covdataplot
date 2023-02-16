

#' covdata_palettes_print
#'
#' @description  This function is used to visualize a single color palette from the list of color palettes
#' contained in'covdata_palette_colors'
#' @keywords covdata_palettes_print
#' @param name is the name of the color palette in covdata_palette_colors.
#' @param n is the number of colors from the color palette to display.
#' @param ... additional arguments from 'covdata_palettes' (e.g., type, reverse)
#'
#' @examples
#' covdata_palettes_print("Brand")
#' covdata_palettes_print("Pantones")
#' covdata_palettes_print("RdBu", n = 26, type = "continuous")

#' @export
covdata_palettes_print <<- function(name, n, ...){

  pal <- covdata_palettes(name, n, ...)

  show_col(pal)

}

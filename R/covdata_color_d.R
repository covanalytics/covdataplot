
#' covdata_color_d
#'
#' @description  This function is used to apply a color aesthetic to a discrete variable.
#' Color palette options come from 'covdata_palette_colors'.
#' options in 'covington_colors' by name in applying color or fill ggplot aesthetics.
#' @param name is the name of the color palette from 'covdata_palette_colors'.
#' @param reverse is used to change the default order of colors contained in the selected palette.
#' @keywords covdata_color_d
#'
#' @examples
#' cov_graph +
#' geom_point(stat = "identity", aes(color = Group), size = 4)+
#' covdata_color_d("Pantones", reverse = TRUE)
#'
#' @export
covdata_color_d <<- function(name, reverse = FALSE){
  if(reverse) {
    ggplot2::scale_colour_manual(values = covdata_palettes(name,
                                                           type = "discrete",
                                                           reverse = TRUE))
  }else
    ggplot2::scale_colour_manual(values = covdata_palettes(name,
                                                           type = "discrete"))
}


#' covdata_fill_c
#'
#' @description  This function is used to apply a fill aesthetic to a continuous variable.
#' Color palette options come from 'covdata_palette_colors'.
#' @param name is the name of the color palette from 'covdata_palette_colors'.
#' @param reverse is used to change the default order of colors contained in the selected palette.
#' @keywords covdata_fill_c
#' @references Jumping Rivers--Custom colour palettes for {ggplot2}
#' @examples
#' cov_graph +
#' geom_bar(stat = "identity", aes(color = Amount), size = 4)+
#' covdata_fill_c("YlOrRd")
#'
#' @export
covdata_fill_c <<- function(name, reverse = FALSE){
  if(reverse) {
    ggplot2::scale_fill_gradientn(colours = covdata_palettes(name,
                                                             type = "continuous",
                                                             reverse = TRUE))
  }else
    ggplot2::scale_fill_gradientn(colours = covdata_palettes(name,
                                                             type = "continuous"))
}

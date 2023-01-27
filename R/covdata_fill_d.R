
#' covdata_fill_d
#'
#' @description  This function is used to apply a fill aesthetic to a discrete variable.
#' Color palette options come from 'covdata_palette_colors'.
#' @param name is the name of the color palette from 'covdata_palette_colors'.
#' @param reverse is used to change the default order of colors contained in the selected palette.
#' @keywords covdata_fill_d
#' @references Jumping Rivers--Custom colour palettes for {ggplot2}
#' @examples
#' cov_graph +
#' geom_bar(stat = "identity", aes(fill = Group))+
#' covdata_fill_d("Pantones")
#'
#' @export
covdata_fill_d <<- function(name, reverse = FALSE){
  if(reverse) {
    ggplot2::scale_fill_manual(values = covdata_palettes(name,
                                                         type = "discrete",
                                                         reverse = TRUE))
  }else
    ggplot2::scale_fill_manual(values = covdata_palettes(name,
                                                         type = "discrete"))
}

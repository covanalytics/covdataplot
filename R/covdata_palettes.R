


#' covdata_palettes
#'
#' @description  This function is used to generate a color palette from the
#' list of palettes contained in 'covdata_palette_colors'.
#' @param name is the name of the color palette in covdata_palette_colors.
#' @param n is the number of colors from the color palette to use.
#' @param all_palettes is the list of color palettes to use.  The default choice
#' is set to use 'covdata_palette_colors.
#' @param type determines a discrete or continuous color palette.
#' @param reverse is used to change the default order of colors in the selected color palette.
#' @keywords covdata_palettes
#' @references Jumping Rivers--Custom colour palettes for {ggplot2}
#' @export
#' @examples
#' covdata_palettes("Brand")




# function to create a color palette for display
covdata_palettes <<- function(name,
                              n,
                              all_palettes = covdata_palette_colors,
                              type = c("discrete", "continuous"),
                              reverse = FALSE) {
  palette <- all_palettes[[name]]
  if (missing(n)) {                              # return length of palette if number of colors not provided
    n = length(palette)                          # discrete type can not return additional colors in palette
  }

  if(reverse) palette <- rev(palette)            # reverse order of palette colors if reverse is TRUE

  type <- match.arg(type)
  out <- switch(type,
                continuous = grDevices::colorRampPalette(palette)(n), # set n to interpolate palette for more colors
                discrete = palette[1:n]
  )

  structure(out, name = name, class = "palette")
}

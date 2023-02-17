

#' covdata_palettes_all
#'
#' @description  This function is used to visualize all palettes simultaneously from the list of color palettes
#' contained in'covdata_palette_colors'.  The function can also be used to visually display any list of color palettes.
#' @keywords covdata_palettes_all
#' @param palette_list is the list containing color palettes.
#' @param palette_names is the names of the color palettes.
#'
#' @examples
#' palette_list <- rev(covdata_palette_colors)
#' palette_names <- rev(names(covdata_palette_colors))
#' covdata_palettes_all(palette_list, palette_names)

#' @export
covdata_palettes_all <- function(palette_list, palette_names){
  nr <- length(palette_list)
  nc <- max(lengths(palette_list))
  ylim <- c(0, nr)
  oldpar <- par(mgp = c(2, 0.25, 0))
  on.exit(par(oldpar))
  plot(1, 1, xlim = c(0, nc), ylim = ylim, type = "n", axes = FALSE,
       bty = "n", xlab = "", ylab = "")
  for (i in 1:nr) {
    nj <- length(palette_list[[i]])
    shadi <- palette_list[[i]]
    rect(xleft = 0:(nj - 1), ybottom = i - 1, xright = 1:nj,
         ytop = i - 0.1, col = shadi, border = "light grey")
  }
  text(rep(-0.1, nr), (1:nr) - 0.6, labels = palette_names, xpd = TRUE,
       adj = 1)
}

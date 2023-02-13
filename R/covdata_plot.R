
#' covdata_plot
#'
#' @description  This function will create and save a graphics plot in the
#' style that is consistent with the professional brand for the City of Covington.
#' It will add a footer that includes the COV logo at the bottom left and a horizontal
#' line acrorss the entire plot width in the color covington.blue
#' @details For a correctly formatted footer, the plot must contain a Title, Subtitle,
#' an X-Axis label and a three line caption.
#' @param plot the ggplot containing the data and style components
#' @param logo the name of the City logo from 'covington_logos'.
#' @param save_name the name (including file path) to use to save the graphics plot.  The suffix '.png' is not
#' needed as this and the date (ymd) is added automatically to the name.
#' @param save_width the width in inches for the saved graphics plot.  The default is 5 'in'
#' @param save_heght the height in inches for the saved graphics plot.  The default is 4 'in'
#' @keywords covdata_plot
#' @examples
#' covdata_plot(plot = plot,
#' logo = "cov.logo.blue",
#' save_name = "plot_name")

#' @export
covdata_plot <<- function(plot, logo = c("cov.seal.blue", "cov.seal.white", "cov.logo.blue",
                                         "cov.logo.white"),
                          save_name,
                          save_width = 5,
                          save_height = 4){


  logo_name <- unname(covington_logos[match.arg(logo)])

  logo_file <- magick::image_read(logo_name)
  logo_sized <- magick::image_resize(logo_file, 200)


  footer <- grid::grobTree(
    grid::linesGrob(
      x = grid::unit(c(0.001, 1.1), "npc"),
      y = grid::unit(0.61, "in"),
      gp = gpar(col = "#1100ff", lwd = 3)),
    grid::rasterGrob(logo_sized, x = 0.004, vjust = -0.10, just = c('left', 'bottom'),
                     width = unit(1.4, 'inches')))

  grob <- ggplot2::ggplotGrob(plot)

  plot_grid <- ggpubr::ggarrange(grob, footer,
                                 ncol = 1, nrow = 2,
                                 heights = c(1, 0.001))

  if(!missing(save_name)) {


    final.plot <- grid.draw(plot_grid)

    ggplot2::ggsave(paste(save_name, "_", lubridate::today(), ".png", sep = ""),final.plot,
                    device = "png", width = save_width, height = save_height, unit = "in", dpi = 120)

  }

  else {


    grid.draw(plot_grid)

  }

}




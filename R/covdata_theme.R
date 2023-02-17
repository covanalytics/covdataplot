
#' covdata_theme
#'
#' @description  This function is used to produce graphics that have a
#' style that is consistent with the professional brand for the City of Covington. The function
#' modifies the 'theme_bw' default style of the ggplot2 graphics library.
#' @param plot.background.fill changes the plot background color using options available in covington_colors.  The
#' default color is white (covington.plain).
#' @param panel.background.fill changes the panel background color using options available in covington_colors. The
#' default color is white (covington.plain).
#' @param text.color changes the text color of all text displayed in the graphics plot (except for data labels). The
#' default color is black (covington.black).
#' @keywords covdata_theme
#' @examples
#' covdata_theme() #Covington.Basic style
#' covdata_theme(plot.background.fill = "covington.gray", text.color = "covington.plain") #Covington.Dark style
#' covdata_theme(plot.background.fill = "covington.light.gray") #Covington.Gray style
#' covdata_theme(panel.background.fill = "covington.blue",plot.backgroundd.fill = "covington.light.blue",
#' text.color = "covington.plain") # Covington.Quirky style
#' @importFrom ggplot2 %+replace%

#' @export
covdata_theme <- function(plot.background.fill = c("covington.plain",
                                                    "covington.black",
                                                    "covington.blue",
                                                    "covington.navy",
                                                    "covington.dark.blue",
                                                    "covington.light.blue",
                                                    "covington.green",
                                                    "covington.yellow",
                                                    "covington.gray",
                                                    "covington.light.gray",
                                                    "covington.og.blue"),
                           panel.background.fill = c("covington.plain",
                                                     "covington.light.gray",
                                                     "covington.gray",
                                                     "covington.black",
                                                     "covington.blue",
                                                     "covington.light.blue"),
                           text.color = c("covington.black", "covington.plain")){



  #assign font family up front
  font <- "Franklin Gothic Medium"

  #replace elements we want to change
  ggplot2::theme_bw() %+replace%


    #Custom theme settings

    ggplot2::theme(

      #All text font
      text = ggplot2::element_text(family = font, color = unname(covington_colors[match.arg(text.color)])),

      #Title format
      title = ggplot2::element_text(color = unname(covington_colors[match.arg(text.color)])),

      #Axis format
      axis.text = ggplot2::element_text(colour = unname(covington_colors[match.arg(text.color)]),
                                        size = 9),
      axis.ticks = ggplot2::element_line(color = unname(covington_colors[match.arg(text.color)])),

      axis.title.y = ggplot2::element_blank(),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t=10,b=15), size = 10),

      #Facet wrap background color
      strip.background = ggplot2::element_rect(fill="#cccccc"),

      #Legend format
      legend.position = "top",
      legend.justification = "left",
      legend.direction = "horizontal",
      legend.text.align = 0,
      legend.margin = ggplot2::margin(l = -0.2, unit = "cm"),

      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family=font, size=8),

      #color fill for plot and panel backgrounds
      plot.background = ggplot2::element_rect(fill = unname(covington_colors[match.arg(plot.background.fill)]),
                                              colour = NA),

      panel.background = ggplot2::element_rect(fill = unname(covington_colors[match.arg(panel.background.fill)])),

      #margins for plot and caption
      plot.margin = ggplot2::margin(t = 0.2, r = 0.2, b = 0.2, l = 0.2, unit = "cm"),
      plot.caption = ggplot2::element_text(margin = ggplot2::margin(t=15,b=0, r=-0.7), hjust = 1, size = 9)

    )
}


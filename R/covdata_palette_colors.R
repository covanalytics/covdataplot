

#' covdata_palette_colors
#'
#' @description  covdata_palette_colors is a character string that contains 14 color palettes,
#' including the Brand, Pantones, and Neutrals palettes for the Covington brand. The additional
#' palettes ('Blues' through 'Set3') are needed when data components of the graphics plot must
#' be styled to show differences along continuous, diverging, or discrete scales.  The additional
#' color palettes are borrowed from R Color Brewer's palettes.
#' @keywords covdata_palette_colors
#' @references R Color Brewer
#' @export
#' @examples
#' covdata_palette_colors <<- list(
#' Brand = c("#1100ff", "#030055", "#09008a", "#00c4f7", "#00e900", "#ff0000", "#ffc500"),
#' Pantones = c("#0047ba", "#211261", "#000b8c", "#00c1de", "#38d430", "#ea0029", "#ffc600"),
#' Neutrals = c("#000000", "#878787", "#cccccc", "#ffffff"),
#' Blues = c("#F7FBFF", "#DEEBF7", "#C6DBEF", "#9ECAE1", "#6BAED6",
#' "#4292C6", "#2171B5", "#08519C", "#08306B"),
#' Greens = c("#F7FCF5", "#E5F5E0", "#C7E9C0", "#A1D99B", "#74C476", "#41AB5D", "#238B45", "#006D2C", "#00441B"),
#' Reds = c("#FFF5F0", "#FEE0D2", "#FCBBA1", "#FC9272", "#FB6A4A", "#EF3B2C", "#CB181D", "#A50F15", "#67000D"),
#' Greys = c("#FFFFFF", "#F0F0F0", "#D9D9D9", "#BDBDBD", "#969696", "#737373", "#525252", "#252525", "#000000"),
#' YlOrRd = c("#FFFFCC", "#FFEDA0", "#FED976", "#FEB24C", "#FD8D3C", "#FC4E2A", "#E31A1C", "#BD0026", "#800026"),
#' YlGnBu = c("#FFFFD9", "#EDF8B1", "#C7E9B4", "#7FCDBB", "#41B6C4", "#1D91C0", "#225EA8", "#253494", "#081D58"),
#' RdYlBu = c("#A50026", "#D73027", "#F46D43", "#FDAE61", "#FEE090",
#' "#FFFFBF", "#E0F3F8", "#ABD9E9", "#74ADD1", "#4575B4", "#313695"),
#' RdBu = c("#67001F", "#B2182B", "#D6604D", "#F4A582", "#FDDBC7", "#F7F7F7",
#' "#D1E5F0", "#92C5DE", "#4393C3", "#2166AC", "#053061"),
#' Spectral = c("#9E0142", "#D53E4F", "#F46D43", "#FDAE61", "#FEE08B",
#' "#FFFFBF", "#E6F598", "#ABDDA4", "#66C2A5", "#3288BD", "#5E4FA2"),
#' Paired = c("#A6CEE3", "#1F78B4", "#B2DF8A", "#33A02C", "#FB9A99",
#' "#E31A1C", "#FDBF6F", "#FF7F00", "#CAB2D6", "#6A3D9A", "#FFFF99", "#B15928"),
#' Set3 = c("#8DD3C7", "#FFFFB3", "#BEBADA", "#FB8072", "#80B1D3",
#' "#FDB462", "#B3DE69", "#FCCDE5", "#D9D9D9", "#BC80BD","#CCEBC5", "#FFED6F"))


covdata_palette_colors <<- list(
  Brand = c("#1100ff", "#030055", "#09008a", "#00c4f7", "#00e900", "#ff0000", "#ffc500"),
  Pantones = c("#0047ba", "#211261", "#000b8c", "#00c1de", "#38d430", "#ea0029", "#ffc600"),
  Neutrals = c("#000000", "#878787", "#cccccc", "#ffffff"),
  Blues = c("#F7FBFF", "#DEEBF7", "#C6DBEF", "#9ECAE1", "#6BAED6",
            "#4292C6", "#2171B5", "#08519C", "#08306B"),
  Greens = c("#F7FCF5", "#E5F5E0", "#C7E9C0", "#A1D99B", "#74C476", "#41AB5D", "#238B45", "#006D2C", "#00441B"),
  Reds = c("#FFF5F0", "#FEE0D2", "#FCBBA1", "#FC9272", "#FB6A4A", "#EF3B2C", "#CB181D", "#A50F15", "#67000D"),
  Greys = c("#FFFFFF", "#F0F0F0", "#D9D9D9", "#BDBDBD", "#969696", "#737373", "#525252", "#252525", "#000000"),
  YlOrRd = c("#FFFFCC", "#FFEDA0", "#FED976", "#FEB24C", "#FD8D3C", "#FC4E2A", "#E31A1C", "#BD0026", "#800026"),
  YlGnBu = c("#FFFFD9", "#EDF8B1", "#C7E9B4", "#7FCDBB", "#41B6C4", "#1D91C0", "#225EA8", "#253494", "#081D58"),
  RdYlBu = c("#A50026", "#D73027", "#F46D43", "#FDAE61", "#FEE090",
             "#FFFFBF", "#E0F3F8", "#ABD9E9", "#74ADD1", "#4575B4", "#313695"),
  RdBu = c("#67001F", "#B2182B", "#D6604D", "#F4A582", "#FDDBC7", "#F7F7F7",
           "#D1E5F0", "#92C5DE", "#4393C3", "#2166AC", "#053061"),
  Spectral = c("#9E0142", "#D53E4F", "#F46D43", "#FDAE61", "#FEE08B",
               "#FFFFBF", "#E6F598", "#ABDDA4", "#66C2A5", "#3288BD", "#5E4FA2"),
  Paired = c("#A6CEE3", "#1F78B4", "#B2DF8A", "#33A02C", "#FB9A99",
             "#E31A1C", "#FDBF6F", "#FF7F00", "#CAB2D6", "#6A3D9A",
             "#FFFF99", "#B15928"),
  Set3 = c("#8DD3C7", "#FFFFB3", "#BEBADA", "#FB8072", "#80B1D3",
           "#FDB462", "#B3DE69", "#FCCDE5", "#D9D9D9", "#BC80BD",
           "#CCEBC5", "#FFED6F"))

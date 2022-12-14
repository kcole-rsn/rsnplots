#' A [ggplot2] theme formatted in the Refugee Solidarity Network style
#'
#' \code{gg_apply_map} provides a [ggplot2] theme formatted according to the
#' RSN style guide for maps.
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @param scale "continuous" creates a vertical legend to the right of the map. "discrete" creates a horizontal legend above the map.
#' @param base_family,base_size base font family and size
#' @param base_line_size,base_rect_size base line and rectangle sizes
#' @export

gg_apply_map <- function(scale = "continuous",
                            base_size = 8.5,
                            base_family = "Open Sans",
                            base_line_size = 0.5,
                            base_rect_size = 0.5) {

  gg <- gg_apply_rsn(base_size = base_size,
                         base_family = base_family,
                         base_line_size = base_line_size,
                         base_rect_size = base_rect_size)

  gg <- gg +  ggplot2::theme(

      # make changes for mapping styles
      axis.text = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      axis.title = ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      legend.margin = ggplot2::margin(t = 6L, r = 6L, b = 6L, l = 6L, "pt")
    )

  if (scale == "continuous") {
    gg <- gg + ggplot2::theme(
      legend.position = "right",
      legend.direction = "vertical",
      legend.title = ggplot2::element_text(size = base_size)
    )
  }
  # return gg
  gg
}
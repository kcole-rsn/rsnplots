#' RSN [ggplot2] themes
#'
#' \code{gg_set_defaults} provides a [ggplot2] theme formatted according to the
#' RSN style guide.
#'
#' @param style The default theme style for the R session. "rsn", "ppr" or "map".
#' @param base_size The base font size for the theme. All fonts are relative to
#' this value.
#' @param base_family The base font family for the theme.
#' @param base_line_size The base line size for the theme. All line sizes are
#' relative to this value.
#' @param base_rect_size The base rect size for the theme. All rect sizes are
#' relative to this value.
#' @param scale For `theme_map()`. Should the legend theme be continuous or discrete?
#'
#' @import extrafont
#' @import ggrepel
#'
#' @export
#'
gg_set_defaults <- function(style = "rsn",
                            base_size = 8.5,
                            base_family = "Open Sans",
                            base_line_size = 0.5,
                            base_rect_size = 0.5,
                            scale = "continuous") {

    # set default theme to theme_*() --------------------------------------

    if (style == "rsn") {
        ggplot2::theme_set(gg_apply_rsn(
            base_size = base_size,
            base_family = base_family,
            base_line_size = base_line_size,
            base_rect_size = base_rect_size
        ))
    } else if (style == "ppr") {
        ggplot2::theme_set(gg_apply_ppr(
            base_size = base_size,
            base_family = base_family,
            base_line_size = base_line_size,
            base_rect_size = base_rect_size
        ))
    } else if (style == "map") {
        ggplot2::theme_set(gg_apply_map(
            base_size = base_size,
            base_family = base_family,
            base_line_size = base_line_size,
            base_rect_size = base_rect_size,
            scale = scale
        ))
    } else {
        stop('Invalid "style" argument. Valid styles are: ',
            '"rsn", "ppr" and "map".',
            call. = FALSE
        )
    }

  # add base_family font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = base_family, size = 1 / 0.352777778))
  ggplot2::update_geom_defaults("label", list(family = base_family, size = 1 / 0.352777778))
  ggplot2::update_geom_defaults("text_repel", list(family = base_family, size = 1 / 0.352777778))
  ggplot2::update_geom_defaults("label_repel", list(family = base_family, size = 1 / 0.352777778))

  # set default color scales for continuous variables -----------------------

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )


  # set defaults for geoms --------------------------------------------------

  ggplot2::update_geom_defaults("bar", list(fill = "#205E84"))
  ggplot2::update_geom_defaults("col", list(fill = "#205E84"))
  ggplot2::update_geom_defaults("point", list(colour = "#205E84", size = 3))
  ggplot2::update_geom_defaults("line", list(colour = "#205E84", size = 1))
  ggplot2::update_geom_defaults("step", list(colour = "#205E84", size = 1))
  ggplot2::update_geom_defaults("path", list(colour = "#205E84", size = 1))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#205E84"))
  ggplot2::update_geom_defaults("density", list(fill = "#205E84"))
  ggplot2::update_geom_defaults("violin", list(fill = "#205E84"))
  ggplot2::update_geom_defaults("sf", list(fill = "#205E84", color = "white", size = 0.1))

  # set defaults for stats --------------------------------------------------

  ggplot2::update_stat_defaults("count", list(fill = "#205E84"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#205E84"))
  ggplot2::update_stat_defaults("density", list(fill = "#205E84"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#205E84"))
}
#' The Refugee Solidarity Network [ggplot2] theme
#'
#' Color palettes used in the RSN theme.
#'
#' @export
#' @param palette Palette name.
rsn_color_pal <- function(palette = "categorical") {
  palette_list <- palette_rsn

  types <- palette_list[[palette]]

  function(n) {

    if (n > 8) {

      stop(
        paste(
          "Error: rsnplots allows for a max of 8 colors. Your code asked for",
          n,
          "colors.",
          "If you need more than 8 colors for exploratory purposes, use",
          "ggplot2::scale_fill_discrete() or ggplot2::scale_color_discrete()."
        )
      )

    }

    types[[n]]
  }
}

#' Discrete color scale that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_fill_discrete().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "rsn",
    palette = rsn_color_pal("categorical"),
    ...
  )
}

#' Discrete color scale that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_color_discrete().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "rsn",
    palette = rsn_color_pal("categorical"),
    ...
  )
}

#' Discrete fill scale that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_fill_discrete().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "rsn",
    palette = rsn_color_pal("categorical"),
    ...
  )
}

#' Continuous fill scale that aligns with the RSN style
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_gradientn <- function(...,
                                  colours = c('#002f61', '#0e3b63', '#164866', '#1c5468', '#1f616a', '#216f6c', '#207c6e', '#1e8a6f'),
                                  colors = c('#002f61', '#0e3b63', '#164866', '#1c5468', '#1f616a', '#216f6c', '#207c6e', '#1e8a6f'),
                                  values = NULL,
                                  space = "Lab",
                                  na.value = "grey50",
                                  guide = "colourbar") {

  colours <- if (missing(colours)) colors else colours

  ggplot2::continuous_scale(
    aesthetics = "colour",
    scale_name = "gradientn",
    palette = scales::gradient_n_pal(colours, values, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' Continuous fill scale that aligns with the RSN style
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_gradientn <- scale_color_gradientn

#' Continuous fill scale that aligns with the RSN style
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_gradientn <- function(...,
                                 colours = c('#002f61', '#0e3b63', '#164866', '#1c5468', '#1f616a', '#216f6c', '#207c6e', '#1e8a6f'),
                                 colors = c('#002f61', '#0e3b63', '#164866', '#1c5468', '#1f616a', '#216f6c', '#207c6e', '#1e8a6f'),
                                 values = NULL,
                                 space = "Lab",
                                 na.value = "grey50",
                                 guide = "colourbar") {

  colours <- if (missing(colours)) colors else colours

  ggplot2::continuous_scale(
    aesthetics = "fill",
    scale_name = "gradientn",
    palette = scales::gradient_n_pal(colours, values, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' Discrete fill scale for ordinal factors that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_fill_ordinal().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "rsn",
    palette = rsn_color_pal("sequential"),
    ...
  )
}

#' Discrete color scale for ordinal factors that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_color_ordinal().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "rsn",
    palette = rsn_color_pal("sequential"),
    ...
  )
}

#' Discrete color scale for ordinal factors that aligns with the RSN style
#'
#' This function can only handle up to 8 categories/colors.
#'
#' If you need more than 8 colors for exploratory purposes, use
#' ggplot2::scale_colour_ordinal().
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "rsn",
    palette = rsn_color_pal("sequential"),
    ...
  )
}


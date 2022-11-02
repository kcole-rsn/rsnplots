#' A [vega-lite](https://vega.github.io/vega-lite/) theme formatted in the Refugee Solidarity Network style
#'
#' \code{vl_apply_rsn} provides a [vega-lite](https://vega.github.io/vega-lite/) theme formatted according to the
#' Refugee Solidarity Network style guide.
#'
#' @import extrafont
#' @import vegabrite
#' @import dplyr
#' @md
#' @param spec, a vega-lite spec (typically passed in via pipe)
#' @param base_family, base font family
#' @export

vl_apply_rsn <- function(spec = NULL, base_family = "Open Sans") {
    vegabrite::vl_config_title(
        spec,
        orient = "top",
        anchor = "start",
        font = base_family,
        fontSize = 15L,
        subtitleFont = base_family,
        subtitlePadding = 10L
    ) %>%
    vegabrite::vl_config_axisX(
        domain = TRUE,
        domainColor = "lightgray",
        domainWidth = 1L,
        ticks = TRUE,
        grid = FALSE,
        labelFontSize = 12L,
        labelFont = base_family,
        labelAngle = 0,
        titleFontSize = 12L,
        titlePadding = 10L,
        titleFont = base_family,
        titleFontStyle = "italic",
        titleFontWeight = "normal"
    ) %>%
    vegabrite::vl_config_axisY(
        domain = FALSE,
        domainWidth = 1L,
        ticks = FALSE,
        grid = TRUE,
        gridDash = c(2, 2, 0),
        gridColor = "lightgray",
        gridWidth = 1L,
        labelFontSize = 12L,
        labelFont = base_family,
        labelPadding = 10L,
        titleFont = base_family,
        titleFontStyle = "italic",
        titleFontWeight = "normal"
    ) %>%
    vegabrite::vl_config_legend(
        labelFontSize = 12L,
        labelFont = base_family,
        symbolSize = 100L,
        titleFontSize = 12L,
        titlePadding = 10L,
        titleFont = base_family,
        orient = "right",
        offset = 10L
    ) %>%
    vegabrite::vl_config_headerFacet(
        labelFont = base_family,
        labelFontWeight = "bold"
    ) %>%
    vegabrite::vl_config_view(stroke = "transparent") %>%
    vegabrite::vl_config(
        range = list(
            category = list("#002f61", "#154565", "#1e5b69", "#21726c", "#a9aebb", "#bca199", "#c89377", "#d18655"),
            diverging = list("#002f61", "#154565", "#1e5b69", "#21726c", "#a9aebb", "#bca199", "#c89377", "#d18655"),
            ramp = list("#002f61", "#0e3b63", "#164866", "#1c5468", "#1f616a", "#216f6c", "#207c6e", "#1e8a6f")
        )
    )
}

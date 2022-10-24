#' The Refugee Solidarity Network [ggplot2] theme
#'
#' Palette data for RSN Style
#'
#' Data used by the palettes in the rsnplots package.
#'
#' @format A \code{list}.
#' @export
palette_rsn <- {
    palette <- list(
        categorical = list(
            c("#002f61"),
            c("#002f61", "#d18655"),
            c('#002f61', '#1e8a6f', '#d18655'),
            c('#002f61', '#1e5b69', '#bca199', '#d18655'),
            c('#002f61', '#1e5b69', '#1e8a6f', '#bca199', '#d18655'),
            c('#002f61', '#184c67', '#206a6b', '#b0aab0', '#c59882', '#d18655'),
            c('#002f61', '#184c67', '#206a6b', '#1e8a6f', '#b0aab0', '#c59882', '#d18655'),
            c('#002f61', '#154565', '#1e5b69', '#21726c', '#a9aebb', '#bca199', '#c89377', '#d18655')
        ),
        sequential = list(
            c("#002f61"),
            c('#002f61', '#1e8a6f'),
            c('#002f61', '#1e5b69', '#1e8a6f'),
            c('#002f61', '#184c67', '#206a6b', '#1e8a6f'),
            c('#002f61', '#154565', '#1e5b69', '#21726c', '#1e8a6f'),
            c('#002f61', '#124064', '#1b5268', '#1f646a', '#21776d', '#1e8a6f'),
            c('#002f61', '#103d64', '#184c67', '#1e5b69', '#206a6b', '#207a6d', '#1e8a6f'),
            c('#002f61', '#0e3b63', '#164866', '#1c5468', '#1f616a', '#216f6c', '#207c6e', '#1e8a6f')
        )
    )

    palette
}

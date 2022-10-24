#' Test for Open Sans import and registration
#'
#' \code{open_sans_test} tests to see if Open Sans is imported and registered. Open Sans is
#' can be installed from
#' \href{https://fonts.google.com/specimen/Open+Sans}{Google fonts}.
#'
#' Import and register Open Sans in R with open_sans_install().
#'
#' @export
#'
open_sans_test <- function() {

  if (sum(grepl("[Oo]pen Sans$", extrafont::fonts())) > 0) {

    "Open Sans is imported and registered."

  } else {

    "Open Sans isn't imported and registered. Install the font from Google
    Fonts and import using open_sans_import(). See ?open_sans_import for more
    information."

  }
}
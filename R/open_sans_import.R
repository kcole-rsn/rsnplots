#' Import and register Open Sans font
#'
#' \code{open_sans_import()} tests to see if Open Sans is imported and registered. If
#' Open Sans, isn't imported and registered, then \code{open_sans_import()} imports and
#' registers Open Sans with
#' \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Open Sans must be installed on your computer for \code{open sans_import()} to
#' work. To install, visit
#' \href{https://fonts.google.com/specimen/Open+Sans}{Google fonts} and click
#' "Download family". Unzip and open each of the .ttf files and click install.
#'
#' Test to see if Open Sans is imported and registered with \code{open sans_test()}.
#'
#' @md
#' @export
open_sans_import <- function() {

  if (sum(grepl("[Oo]pen Sans$", extrafont::fonts())) > 0) {

    "Open Sans is already imported and registered."

  } else {

    # get a list of all fonts on the machine
    local_fonts <- systemfonts::system_fonts()

    # subset the list to just Open Sans fonts
    os_fonts <- local_fonts[grepl(pattern = "[Oo]pen Sans$", x = local_fonts$family), ]

    # create a vector of directories where Open Sans fonts are located
    os_directories <- unique(gsub("[Oo]pen Sans.*\\.ttf", "", os_fonts$path))

    # add a warning for unix users about Rttf2pt1 version
    if (.Platform$OS.type == "unix") {

      print(
        paste(
            "Unix (Mac) users may experience errors if the library(Rttf2pt1)",
            "version is >= 1.3.9. Restart R. Run",
            "remotes::install_version('Rttf2pt1', version = '1.3.8').",
            "Restart R. Then try open_sans_import() again."
        )
      )

    }

    # import the Open Sans fonts
    extrafont::font_import(paths = os_directories, pattern = "[Oo]pen Sans$")

    # register the fonts
    extrafont::loadfonts()

    # test to confirm that Open Sans is imported and registered
    open_sans_test()

  }

}
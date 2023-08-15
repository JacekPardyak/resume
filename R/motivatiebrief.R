#' Motivatiebrief
#'
#' De sjabloon voor het maken van brieven
#'
#'
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#' 
#' @examples
#' path = "Untitled"
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}
#' rmarkdown::draft(paste0(path, ".Rmd"),
#' template="motivatiebrief", 
#' package="resume", 
#' create_dir = TRUE, 
#' edit = FALSE)
#' rmarkdown::render(paste0(path, "/", path, ".Rmd"))
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}

motivatiebrief <- function(...){
  templ <- system.file("rmarkdown", "templates", "motivatiebrief", "resources", "template.tex", package = "resume")
  rmarkdown::pdf_document(template = templ,
                          ...)
}

#' @rdname resume
#' @export
templ_motivatiebrief <- function() {
  print(system.file("rmarkdown", "templates", "motivatiebrief", "resources", "template.tex", package = "resume"))
}

#' Resume
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
#' rmarkdown::draft(paste0(path, ".Rmd"), template="brief", package="resume", create_dir = TRUE, edit = FALSE)
#' rmarkdown::render(paste0(path, "/", path, ".Rmd"))

brief <- function(...){
  templ <- system.file("rmarkdown", "templates", "brief", "resources", "template.tex", package = "resume")
  rmarkdown::pdf_document(template = templ,
                          ...)
}

#' @rdname resume
#' @export
templ_brief <- function() {
  print(system.file("rmarkdown", "templates", "brief", "resources", "template.tex", package = "resume"))
}

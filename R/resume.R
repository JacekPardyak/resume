#' Resume
#'
#' A template for Résumé documents
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD     | DESCRIPTION                     |
#' | --------- | ------------------------------- |
#' | `name`    | your name and surname           |
#' | `contact` | address, telephone,  email, web |
#' | `profile` | short profile summary           |
#' | `...`     | the rest                        |
#'
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#' 
#' @examples
#' path = "Untitled"
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}
#' rmarkdown::draft(paste0(path, ".Rmd"),
#' template="resume", 
#' package="resume", 
#' create_dir = TRUE, 
#' edit = FALSE)
#' rmarkdown::render(paste0(path, "/", path, ".Rmd"))
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}

resume <- function(...){
  templ <- system.file("rmarkdown", "templates", "resume", "resources", "template.tex", package = "resume")
  rmarkdown::pdf_document(template = templ,
                          ...)
}

#' @rdname resume
#' @export
templ_resume <- function() {
  print(system.file("rmarkdown", "templates", "resume", "resources", "template.tex", package = "resume"))
}

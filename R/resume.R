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
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `name` | your name and surname |
#' | `contact` | address, telephone,  email, web|
#' | `profile` | short profile summary |
#' | `...` | the rest |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'

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

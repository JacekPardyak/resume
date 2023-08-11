#' Resume
#'
#' A template for Brief documents
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD     | DESCRIPTION                    |
#' | --------- | ------------------------------ |
#' | `name`    | your name and surname          |
#' | `contact` | address, telephone,  email, web|
#' | `profile` | short profile summary          |
#' | `...`     | the rest                       |
#'
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export

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

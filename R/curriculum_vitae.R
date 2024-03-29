#' Resume Templates
#'
#' A template for Curriculum Vitae documents
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD         | DESCRIPTION                                     |
#' | ------------- | ----------------------------------------------- |
#' | `title`       | title of the document, appears on first row     |
#' | `author`      | name of the author, appears on second row       |
#' | `affiliation` | institutional affiliation, appears on third row |
#' | `email`       | your email, for the fourth row                  |
#'
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
#' @examples
#' path = "Untitled"
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}
#' rmarkdown::draft(paste0(path, ".Rmd"),
#' template="curriculum_vitae", 
#' package="resume", 
#' create_dir = TRUE, 
#' edit = FALSE)
#' rmarkdown::render(paste0(path, "/", path, ".Rmd"))
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}

curriculum_vitae <- function(...){
  templ <- system.file("rmarkdown", "templates", "curriculum_vitae", "resources", "template.tex", package = "resume")
  rmarkdown::pdf_document(template = templ,
                          ...)
}


#' @rdname curriculum_vitae
#' @export
templ_curriculum_vitae <- function() {
  print(system.file("rmarkdown", "templates", "curriculum_vitae", "resources", "template.tex", package = "resume"))
}

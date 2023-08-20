#' Cover Letter
#'
#' A template for Cover Letter documents
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
#' template="cover_letter", 
#' package="resume", 
#' create_dir = TRUE, 
#' edit = FALSE)
#' if(Sys.info()["sysname"]  != "Windows") {
#' str = readLines(paste0(path, "/", path, ".Rmd"))
#' str = gsub("Times New Roman", "Liberation Serif", str )
#' writeLines(str, paste0(path, "/", path, ".Rmd")) }
#' rmarkdown::render(paste0(path, "/", path, ".Rmd"))
#' if (file.exists(path)) {unlink(path, recursive = TRUE)}
#' 

cover_letter <- function(...){
  templ <- system.file("rmarkdown", "templates", "cover_letter", "resources", "template.tex", package = "resume")
  rmarkdown::pdf_document(template = templ,
                          ...)
}

#' @rdname cover_letter
#' @export
templ_cover_letter <- function() {
  print(system.file("rmarkdown", "templates", "cover_letter", "resources", "template.tex", package = "resume"))
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/motivatiebrief.R
\name{motivatiebrief}
\alias{motivatiebrief}
\title{Motivatiebrief}
\usage{
motivatiebrief(...)
}
\arguments{
\item{...}{Arguments to \code{\link[rmarkdown:pdf_document]{rmarkdown::pdf_document}}.}
}
\description{
De sjabloon voor het maken van brieven
}
\examples{
path = "Untitled"
if (file.exists(path)) {unlink(path, recursive = TRUE)}
rmarkdown::draft(paste0(path, ".Rmd"),
template="motivatiebrief", 
package="resume", 
create_dir = TRUE, 
edit = FALSE)
rmarkdown::render(paste0(path, "/", path, ".Rmd"))
if (file.exists(path)) {unlink(path, recursive = TRUE)}
}

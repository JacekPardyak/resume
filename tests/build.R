library(devtools)
#usethis::use_package("methods")
#usethis::use_package("reticulate")
#usethis::use_package("magrittr")
use_mit_license()
load_all()
document()
check()

install()

path = "Untitled"
rmarkdown::draft(paste0(path, ".Rmd"), template="brief", package="resume", create_dir = TRUE, edit = FALSE)
rmarkdown::render(paste0(path, "/", path, ".Rmd"))

 # Load the package required to read XML files.
library("xml2")

work_dir <- getwd()
setwd("./inst/rmarkdown/templates/curriculum_vitae/skeleton/images/licenses/")

files <- list.files("./", pattern = ".txt")
for (file in files) {
  doc <- read_xml(x = file)
  xml_attr(doc, "viewBox") <- "0 0 150.86 64.2"
  xml_attr(doc, "xmlns") <- "http://www.w3.org/2000/svg"
  xml_attr(doc, "xmlns:xlink") <- "http://www.w3.org/1999/xlink"
  write_xml(doc, gsub("txt", "svg", file))
}

files <- list.files("./", pattern = ".svg", full.names = T)
for (file in files) {
  file.out <- gsub(".svg", ".pdf", file)
  # command <- paste('inkscape --export-type=pdf --export-latex', file, sep = " ")
  # command <- paste('inkscape --export-type=png', file, sep = " ")
  command <- paste('inkscape --export-type=pdf', file, sep = " ")
  system(command)
  }
setwd(work_dir)
setwd("./inst/rmarkdown/templates/curriculum_vitae/skeleton/images/interests/")
files <- list.files("./", pattern = ".svg", full.names = T)
for (file in files) {
  file.out <- gsub(".svg", ".pdf", file)
  # command <- paste('inkscape --export-type=pdf --export-latex', file, sep = " ")
  # command <- paste('inkscape --export-type=png', file, sep = " ")
  command <- paste('inkscape --export-type=pdf', file, sep = " ")
  system(command)
}

setwd(work_dir)


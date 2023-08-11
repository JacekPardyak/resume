library(devtools)
#usethis::use_package("methods")
#usethis::use_package("reticulate")
#usethis::use_package("magrittr")
use_mit_license()
load_all()
document()
check()

install()

library(radomd)
Sys.setenv(adomd_path = "/Program Files/Microsoft.NET/ADOMD.NET/160", 
           conn_str = "Data Source=localhost; Provider=MSOLAP; initial catalog=Analysis Services Tutorial")
Query() %>% execute()
Query() %>% cube("[Adventure Works]") %>% 
  columns(c("[Measures].[Internet Sales Count]", "[Measures].[Internet Sales-Sales Amount]"))


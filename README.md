### Overview

The **resume** package provides a suite of custom [R Markdown](http://rmarkdown.rstudio.com) LaTeX formats and templates for authoring resumes and cover letters. 
That documents composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and R code and its output can be seamlessly included using [knitr](http://yihui.name/knitr/). At the same time, classical pdf output conform precisely to job application submission standards. 

### Using resume

To use **resume** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the development version from GitHub:

```r
devtools::install_github("jacekpardyak/resume")
```    

3) Use the **New R Markdown** dialog to create resume or cover letter from appropriate template:

 ![New R Markdown](Capture1.PNG)

4) Modify the new created **R Markdown** document:

 ![Modify R Markdown](Capture2.PNG)

5) Use the **Knit** button to produce resulting document:

 ![PDF from R Markdown](Capture3.PNG)



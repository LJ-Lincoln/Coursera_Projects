install.packages("knitr")
library(knitr)
knit("PA1_template.Rmd") # produces only .md file
knitr::knit2html('PA1_template.Rmd')
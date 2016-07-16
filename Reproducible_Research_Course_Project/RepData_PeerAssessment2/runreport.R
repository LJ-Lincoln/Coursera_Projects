install.packages("knitr")
library(knitr)
knit("Storm.Rmd") # produces only .md file
knitr::knit2pdf('Storm.Rmd')

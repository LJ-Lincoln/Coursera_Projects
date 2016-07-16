## Getting and Cleaning Data Course Project
* Unzip the source
  ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

  into a folder on your local drive,for example,C:\Users\Administrator\Desktop

* Put run_analysis.R to C:\Users\Administrator\Desktop\UCI HAR Dataset

* Set the work direction in RStudio or RGui: 
  ```{r echo=TRUE} 
  setwd("C:/Users/Administrator/Desktop/UCI HAR Dataset") #remember to change "\" into "/"
  ```
  and then run the code: 
  ```{r echo=TRUE}
  source("run_analysis.R")
  ```

* Then R script will be run, it will read the dataset and write these files:

  data1.txt, which is a 10299x68 data frame

  data2.txt, which is a 180x68 data frame

  _The "data1.txt" is a little bit large that it may take a while for the computer to run._

* Run the second data to check the result:
  ```{r echo=TRUE}
  data.avg=read.table("data2.txt",sep=",") 
  head(data.avg)
  ```
  To check whether it is "for each activity and each subject":
  ```{r echo=TRUE}
  data.avg[,1:2]
  ```
  To check whether it is "Extracts only the measurements on the mean and standard deviation for each measurement":
  ```{r echo=TRUE}
  str(data.avg)
  ```


    
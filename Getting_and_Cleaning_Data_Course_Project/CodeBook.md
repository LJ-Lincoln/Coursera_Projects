_Source of the original dataset_:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . 

_Original description_:
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# To clean up the original data, we run the attached R script "run_analysis.R" which performs as follow:

## 1. Merges the training and the test sets to create one data set. 

* Combine the dataset "train/X_train.txt" with "test/X_test.txt", which will get a 10299 x 561 data frame,

* Combine the dataset "train/y_train.txt" with "test/y_test.txt", which will get a 10299 x 1 data frame,

* Combine the dataset "train/subject_train.txt" with "test/subject_test.txt", which will get a 10299 x 1 data frame.



## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

Extract only 66 out of 561 attributes which are measurements on the mean and standard deviation.
All measurements are within the range (-1, 1).

## 3. Uses descriptive activity names to name the activities in the data set:

Replace "1,2,3,4,5,6" with the name of activities:
* 1 -> walking

* 2 -> walkingupstairs

* 3 -> walkingdownstairs

* 4 -> sitting

* 5 -> standing

* 6 -> laying

## 4. Appropriately labels the data set with descriptive variable names:
all feature names "attributes" and activity names are converted to lower case.

Then it merges the 10299x66 data frame containing features with
10299x2 data frames for activity and subjects.

The result is saved as data1.txt, a 10299x68 data frame. 
The first column is activity,
the second column is subject,
the last 66 columns are measurements.

Names of the attributes are:
[1] "tbodyacc-mean()-x"           "tbodyacc-mean()-y"           
 [3] "tbodyacc-mean()-z"           "tbodyacc-std()-x"           
 [5] "tbodyacc-std()-y"            "tbodyacc-std()-z"           
 [7] "tgravityacc-mean()-x"        "tgravityacc-mean()-y"       
 [9] "tgravityacc-mean()-z"        "tgravityacc-std()-x"        
[11] "tgravityacc-std()-y"         "tgravityacc-std()-z"        
[13] "tbodyaccjerk-mean()-x"       "tbodyaccjerk-mean()-y"      
[15] "tbodyaccjerk-mean()-z"       "tbodyaccjerk-std()-x"       
[17] "tbodyaccjerk-std()-y"        "tbodyaccjerk-std()-z"       
[19] "tbodygyro-mean()-x"          "tbodygyro-mean()-y"         
[21] "tbodygyro-mean()-z"          "tbodygyro-std()-x"          
[23] "tbodygyro-std()-y"           "tbodygyro-std()-z"          
[25] "tbodygyrojerk-mean()-x"      "tbodygyrojerk-mean()-y"     
[27] "tbodygyrojerk-mean()-z"      "tbodygyrojerk-std()-x"      
[29] "tbodygyrojerk-std()-y"       "tbodygyrojerk-std()-z"      
[31] "tbodyaccmag-mean()"          "tbodyaccmag-std()"          
[33] "tgravityaccmag-mean()"       "tgravityaccmag-std()"       
[35] "tbodyaccjerkmag-mean()"      "tbodyaccjerkmag-std()"      
[37] "tbodygyromag-mean()"         "tbodygyromag-std()"         
[39] "tbodygyrojerkmag-mean()"     "tbodygyrojerkmag-std()"     
[41] "fbodyacc-mean()-x"           "fbodyacc-mean()-y"          
[43] "fbodyacc-mean()-z"           "fbodyacc-std()-x"           
[45] "fbodyacc-std()-y"            "fbodyacc-std()-z"           
[47] "fbodyaccjerk-mean()-x"       "fbodyaccjerk-mean()-y"      
[49] "fbodyaccjerk-mean()-z"       "fbodyaccjerk-std()-x"       
[51] "fbodyaccjerk-std()-y"        "fbodyaccjerk-std()-z"       
[53] "fbodygyro-mean()-x"          "fbodygyro-mean()-y"         
[55] "fbodygyro-mean()-z"          "fbodygyro-std()-x"          
[57] "fbodygyro-std()-y"           "fbodygyro-std()-z"          
[59] "fbodyaccmag-mean()"          "fbodyaccmag-std()"          
[61] "fbodybodyaccjerkmag-mean()"  "fbodybodyaccjerkmag-std()"  
[63] "fbodybodygyromag-mean()"     "fbodybodygyromag-std()"     
[65] "fbodybodygyrojerkmag-mean()" "fbodybodygyrojerkmag-std()" 





## 5.Creates a 2nd, independent tidy data set with the average of each measurement for each activity and each subject.

The result is saved as data2.txt, a 180x68 data frame.

The first column is activity,  
the second column is subject, 
and then the averages for each of the 66 attributes are in columns from 3 to 68. 

We form it foreach activity and each subject.


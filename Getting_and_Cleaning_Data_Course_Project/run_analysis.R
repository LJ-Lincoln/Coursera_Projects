
# 1. Merges the training and the test sets to create one data set.
## X
X_train=read.table("train/X_train.txt")
X_test=read.table("test/X_test.txt")
X=rbind(X_train,X_test) 

## Y
y_train=read.table("train/y_train.txt")
y_test=read.table("test/y_test.txt")
Y=rbind(y_train,y_test) 

## Subject
subject_train=read.table("train/subject_train.txt")
subject_test=read.table("test/subject_test.txt")
Subject=rbind(subject_train,subject_test)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features=read.table("features.txt")
Selected_F1=grep("-mean()|-std()", features[, 2])
Selected_F2=grep("-meanFreq()",features[,2])
Selected_F=setdiff(Selected_F1,Selected_F2)
features[Selected_F,2]
X=X[,Selected_F]


# 3. Uses descriptive activity names to name the activities in the data set

activities=read.table("activity_labels.txt")
Y=factor(Y[,1],levels=1:6,labels=tolower(activities[,2]))

# 4. Appropriately labels the data set with descriptive variable names:

names(X)=tolower(features[Selected_F,2])
names(Subject)="Subject"
data5=cbind(Subject,X,Y)
write.table(data5, "data1.txt", append = FALSE, quote = TRUE, sep = ",",eol = "\n", na = "NA", dec = ".")

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.


data.mean=aggregate(as.matrix(data5[,-c(1,68)])~data5$Y+data5$Subject,FUN=mean)
write.table(data.mean, "data2.txt", append = FALSE, quote = TRUE, sep = ",",eol = "\n", na = "NA", dec = ".")


#Read data set
#data1=read.table("data1.txt",sep=",")
#data2=read.table("data2.txt",sep=",")

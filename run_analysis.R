library(data.table)
library(plyr)

#   Merges the training and the test sets to create one data set.
train = cbind(fread("UCI HAR Dataset/train/subject_train.txt"),
              fread("UCI HAR Dataset/train/y_train.txt"),
              read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, colClasses=rep("numeric",561)))

test = cbind(fread("UCI HAR Dataset/test/subject_test.txt"),
             fread("UCI HAR Dataset/test/y_test.txt"),
             read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, colClasses=rep("numeric",561)))

ds = rbind(train, test)
setnames(ds, 1:length(colnames(ds)), c("subject", "activity", 1:561))
remove(train, test)

#   Extracts only the measurements on the mean and standard deviation for each
#   measurement.

features = fread("UCI HAR Dataset/features.txt")
features.set = features[like(V2, "mean") | like(V2, "std")]$V1
ds = subset(ds, select=c(1:2, features.set+2))

#   Uses descriptive activity names to name the activities in the data set

ds$activity = ordered(ds$activity, levels = 1:6, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#   Appropriately labels the data set with descriptive variable names. 

setnames(ds, 1:length(colnames(ds)), c("subject", "activity", subset(features, features$V1 %in% colnames(ds))$V2))
remove(features, features.set)

#   From the data set in step 4, creates a second, independent tidy data set
#   with the average of each variable for each activity and each subject.

tidy.ds = ddply(ds, .(subject, activity), colwise(mean))

#   Writes the tidy data set as a txt file created with write.table() using row.name=FALSE

write.table(tidy.ds, "tidyds.txt", row.name=FALSE)
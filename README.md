# Getting and Cleaning Data
## Course Project: Wearable Computing
### rewberl

## README
This repository produces a tidy dataset using accelerometer and gyroscope data derived from the Samsung Galaxy S smartphone. The data were obtained from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and were originally collected by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.

##### Citation:
> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

This repository contains one R script ([run_analysis.R](run_analysis.R)), which executes the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Writes the tidy data set as a txt file created with write.table() using row.name=FALSE.

[run_analysis.R](run_analysis.R) requires the data.table and plyr packages in the R statistical environment.

The repository also contains:
* The complete raw data set, stored in the [UCI HAR Dataset](/UCI HAR Dataset/) folder.
* The tidy data set produced by the script, [tidyds.txt](tidyds.txt).

For details on the variables in the data, please see [CodeBook.md](CodeBook.md).

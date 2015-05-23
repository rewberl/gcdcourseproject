# Getting and Cleaning Data
## Course Project: Wearable Computing
### rewberl

## CodeBook
Information on the variables and data in the raw data set can be found in the [UCI HAR Dataset](/UCI HAR Dataset/) folder. Information here pertains to the tidy data set contained in this repo as [tidyds.txt](tidyds.txt).

### Variables
* subject

##### identifier for experiment participant: range 1-30
* activity

##### one of six activity levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining variables are features derived from the accelerometer and gyroscope data. Time domain signals have a prefix 't' and Fast Fourier Transformed signals have a prefix 'f'. Means and standard deviations are provided for each activity by subject. Units were standardized to a range of [-1, 1].

* BodyAcc-XYZ
* GravityAcc-XYZ
* BodyAccJerk-XYZ
* BodyGyro-XYZ
* BodyGyroJerk-XYZ
* BodyAccMag
* GravityAccMag
* BodyAccJerkMag
* BodyGyroMag
* BodyGyroJerkMag
* BodyAcc-XYZ
* BodyAccJerk-XYZ
* BodyGyro-XYZ
* BodyAccMag
* BodyAccJerkMag
* BodyGyroMag
* BodyGyroJerkMag

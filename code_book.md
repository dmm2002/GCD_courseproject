# Code Book

## Summary
This project is to take data collected from the accelerometers from the Samsung Galaxy S smartphone and produce a tidy dataset.
This is a brief description of the source of the data:
*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

This data represents a combination of test and training data from this study.


## Variables

### Subject
The subjects are represented by a single integer 1-30, each which represent the 30 volunteers within an age bracket of 19-48 years.

### Activity
The Activities that were recorded and presented were: 
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

### Features
The feature names are a combination of different distinguishing data:
 *Prefix:
      * t: time domain signal
      * f: fast fourier transformed
  * Raw signal source instrument:
      * Acc: Accelerometer
      * Gyro: Gyroscope
        * For the Gyroscopic measure, Body and Gravity measures were separated
  * Other attributes:
      * Jerk: measures derived in time
      * Mag: Euclidean norm magnitude of Jerk signals
      * X, Y, Z: axis of the feature
      * mean: Mean of the feature
      * std: Standard deviation of the feature
  * Values:
    * fBodyAcc.X.mean
    * fBodyAcc.X.std
    * fBodyAcc.Y.mean
    * fBodyAcc.Y.std
    * fBodyAcc.Z.mean
    * fBodyAcc.Z.std
    * fBodyAccJerk.X.mean
    * fBodyAccJerk.X.std
    * fBodyAccJerk.Y.mean
    * fBodyAccJerk.Y.std
    * fBodyAccJerk.Z.mean
    * fBodyAccJerk.Z.std
    * fBodyAccMag.mean
    * fBodyAccMag.std
    * fBodyBodyAccJerkMag.mean
    * fBodyBodyAccJerkMag.std
    * fBodyBodyGyroJerkMag.mean
    * fBodyBodyGyroJerkMag.std
    * fBodyBodyGyroMag.mean
    * fBodyBodyGyroMag.std
    * fBodyGyro.X.mean
    * fBodyGyro.X.std
    * fBodyGyro.Y.mean
    * fBodyGyro.Y.std
    * fBodyGyro.Z.mean
    * fBodyGyro.Z.std
    * tBodyAcc.X.mean
    * tBodyAcc.X.std
    * tBodyAcc.Y.mean
    * tBodyAcc.Y.std
    * tBodyAcc.Z.mean
    * tBodyAcc.Z.std
    * tBodyAccJerk.X.mean
    * tBodyAccJerk.X.std
    * tBodyAccJerk.Y.mean
    * tBodyAccJerk.Y.std
    * tBodyAccJerk.Z.mean
    * tBodyAccJerk.Z.std
    * tBodyAccJerkMag.mean
    * tBodyAccJerkMag.std
    * tBodyAccMag.mean
    * tBodyAccMag.std
    * tBodyGyro.X.mean
    * tBodyGyro.X.std
    * tBodyGyro.Y.mean
    * tBodyGyro.Y.std
    * tBodyGyro.Z.mean
    * tBodyGyro.Z.std
    * tBodyGyroJerk.X.mean
    * tBodyGyroJerk.X.std
    * tBodyGyroJerk.Y.mean
    * tBodyGyroJerk.Y.std
    * tBodyGyroJerk.Z.mean
    * tBodyGyroJerk.Z.std
    * tBodyGyroJerkMag.mean
    * tBodyGyroJerkMag.std
    * tBodyGyroMag.mean
    * tBodyGyroMag.std
    * tGravityAcc.X.mean
    * tGravityAcc.X.std
    * tGravityAcc.Y.mean
    * tGravityAcc.Y.std
    * tGravityAcc.Z.mean
    * tGravityAcc.Z.std
    * tGravityAccMag.mean
    * tGravityAccMag.std
NOTE: the above feature names are not the exact representation in the tidy_data.txt file, as they are without any '.' and all lower case.  This was done here to improve readability of what the data points mean based on the above breakdown of the meaning of the names
### Data Values
The data values represent the average of each variable for each activity and each subject.

### Transformation
The original data set was transformed from originally being a combination of test and training data from this study.
The script combines the following datafiles to produce the tidy data set (tidy_data.txt):
  * train/X_train.txt
  * test/X_test.txt
  * features.txt
  * train/y_train.txt
  * test/y_test.txt
  * train/subject_train.txt
  * test/subject_test.txt
  * activity_labels.txt
  
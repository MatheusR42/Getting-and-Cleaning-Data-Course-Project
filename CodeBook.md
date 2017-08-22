# Final Tidy Data Set CodeBook

The final tidy data set has three main types of variables, subject identifier, activity labels and the features.

## subjectId

* **Format:** Integer

* **Description:** An identifier of the subject who carried out the experiment.

* **Values:** 1 to 30.


## activity

* **Format:** String.

* **Description:**: A categorical variable with activity name.

* **Values:** WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.


## Features variables

* **Format:** numeric/float.

* **Description:** The average of each variable feature variable from original data set. The original features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. More information about the original data can be found in [features_info.txt](/Getting-and-Cleaning-Data-Course-Project/blob/master/feature_info.txt).

mean: Mean value
std: Standard deviation

* **Values:** Features are normalized and bounded within [-1,1].

### Complete list of features variables:

timeBodyAcceleration.mean.X  
timeBodyAcceleration.mean.Y  
timeBodyAcceleration.mean.Z  
timeGravityAcceleration.mean.X  
timeGravityAcceleration.mean.Y  
timeGravityAcceleration.mean.Z  
timeBodyAccelerationJerk.mean.X  
timeBodyAccelerationJerk.mean.Y  
timeBodyAccelerationJerk.mean.Z  
timeBodyGyro.mean.X  
timeBodyGyro.mean.Y  
timeBodyGyro.mean.Z  
timeBodyGyroJerk.mean.X  
timeBodyGyroJerk.mean.Y  
timeBodyGyroJerk.mean.Z  
timeBodyAccelerationMag.mean  
timeGravityAccelerationMag.mean  
timeBodyAccelerationJerkMag.mean  
timeBodyGyroMag.mean  
timeBodyGyroJerkMag.mean  
frequencyBodyAcceleration.mean.X  
frequencyBodyAcceleration.mean.Y  
frequencyBodyAcceleration.mean.Z  
frequencyBodyAcceleration.meanFreq.X  
frequencyBodyAcceleration.meanFreq.Y  
frequencyBodyAcceleration.meanFreq.Z  
frequencyBodyAccelerationJerk.mean.X  
frequencyBodyAccelerationJerk.mean.Y  
frequencyBodyAccelerationJerk.mean.Z  
frequencyBodyAccelerationJerk.meanFreq.X  
frequencyBodyAccelerationJerk.meanFreq.Y  
frequencyBodyAccelerationJerk.meanFreq.Z  
frequencyBodyGyro.mean.X  
frequencyBodyGyro.mean.Y  
frequencyBodyGyro.mean.Z  
frequencyBodyGyro.meanFreq.X  
frequencyBodyGyro.meanFreq.Y  
frequencyBodyGyro.meanFreq.Z  
frequencyBodyAccelerationMag.mean  
frequencyBodyAccelerationMag.meanFreq  
frequencyBodyBodyAccelerationJerkMag.mean  
frequencyBodyBodyAccelerationJerkMag.meanFreq  
frequencyBodyBodyGyroMag.mean  
frequencyBodyBodyGyroMag.meanFreq  
frequencyBodyBodyGyroJerkMag.mean  
frequencyBodyBodyGyroJerkMag.meanFreq  
timeBodyAcceleration.std.X  
timeBodyAcceleration.std.Y  
timeBodyAcceleration.std.Z  
timeGravityAcceleration.std.X  
timeGravityAcceleration.std.Y  
timeGravityAcceleration.std.Z  
timeBodyAccelerationJerk.std.X  
timeBodyAccelerationJerk.std.Y  
timeBodyAccelerationJerk.std.Z  
timeBodyGyro.std.X  
timeBodyGyro.std.Y  
timeBodyGyro.std.Z  
timeBodyGyroJerk.std.X  
timeBodyGyroJerk.std.Y  
timeBodyGyroJerk.std.Z  
timeBodyAccelerationMag.std  
timeGravityAccelerationMag.std  
timeBodyAccelerationJerkMag.std  
timeBodyGyroMag.std  
timeBodyGyroJerkMag.std  
frequencyBodyAcceleration.std.X  
frequencyBodyAcceleration.std.Y  
frequencyBodyAcceleration.std.Z  
frequencyBodyAccelerationJerk.std.X  
frequencyBodyAccelerationJerk.std.Y  
frequencyBodyAccelerationJerk.std.Z  
frequencyBodyGyro.std.X  
frequencyBodyGyro.std.Y  
frequencyBodyGyro.std.Z  
frequencyBodyAccelerationMag.std  
frequencyBodyBodyAccelerationJerkMag.std  
frequencyBodyBodyGyroMag.std  
frequencyBodyBodyGyroJerkMag.std  
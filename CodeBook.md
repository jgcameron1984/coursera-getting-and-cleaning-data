# Codebook for Coursera Getting and Cleaning Data Project

## Raw Data Description:

The original data for the project was obtained from the following site: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data link consists of a Human Activity Recognition database that contains data 
collected from the accelerometers from the Samsung Galaxy S smartphone recordings of 
30 subjects performing activities of daily living (ADL) while carrying the waist-mounted 
smartphone with embedded inertial sensors.
	
Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 
years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial 
angular velocity was captured at a constant rate of 50Hz. The experiments were 
video-recorded to label the data manually. The obtained dataset was randomly partitioned 
into two sets, where 70% of the volunteers were selected for generating the training data 
and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, having gravitational and body 
motion components, was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force was assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 
features was obtained by calculating variables from the time and frequency domain.

## Data transformations:

After downloading the data and unzipping the files into a data folder in the working 
directory, the script run_analysis.R performs the following steps for organizing, 
merging and managing the data:

	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation 
	   for each measurement. 
	3. Uses descriptive activity names to name the activities in the data set
	4. Appropriately labels the data set with descriptive variable names. 
	5. From the data set in step 4, creates a second, independent tidy data set 
	   (called tidy.txt) with the average of each variable for each activity and 
	   each subject.

## Tidy data set:

Description of variables in the tidy dataset containing the means of each variable for 
each activity (6 activities) and each subject (30 subjects):

### ID Fields:
* Subject - ID number of each subject (1-30)
* Activity – ID of the type of activity performed
* Activity_name:
  * 1-WALKING
  * 2-WALKING UPSTAIRS
  * 3-WALKING DOWNSTAIRS
  * 4-SITTING
  * 5-STANDING
  * 6-LAYING

### Measurement variables:
* MeanTimeBodyAccelerometer-mean()-X
* MeanTimeBodyAccelerometer-mean()-Y
* MeanTimeBodyAccelerometer-mean()-Z
* MeanTimeBodyAccelerometer-std()-X
* MeanTimeBodyAccelerometer-std()-Y
* MeanTimeBodyAccelerometer-std()-Z
* MeanTimeGravityAccelerometer-mean()-X
* MeanTimeGravityAccelerometer-mean()-Y
* MeanTimeGravityAccelerometer-mean()-Z
* MeanTimeGravityAccelerometer-std()-X
* MeanTimeGravityAccelerometer-std()-Y
* MeanTimeGravityAccelerometer-std()-Z
* MeanTimeBodyAccelerometerJerk-mean()-X
* MeanTimeBodyAccelerometerJerk-mean()-Y
* MeanTimeBodyAccelerometerJerk-mean()-Z
* MeanTimeBodyAccelerometerJerk-std()-X
* MeanTimeBodyAccelerometerJerk-std()-Y
* MeanTimeBodyAccelerometerJerk-std()-Z
* MeanTimeBodyGyroscope-mean()-X
* MeanTimeBodyGyroscope-mean()-Y
* MeanTimeBodyGyroscope-mean()-Z
* MeanTimeBodyGyroscope-std()-X
* MeanTimeBodyGyroscope-std()-Y
* MeanTimeBodyGyroscope-std()-Z
* MeanTimeBodyGyroscopeJerk-mean()-X
* MeanTimeBodyGyroscopeJerk-mean()-Y
* MeanTimeBodyGyroscopeJerk-mean()-Z
* MeanTimeBodyGyroscopeJerk-std()-X
* MeanTimeBodyGyroscopeJerk-std()-Y
* MeanTimeBodyGyroscopeJerk-std()-Z
* MeanTimeBodyAccelerometerMagnitude-mean()
* MeanTimeBodyAccelerometerMagnitude-std()
* MeanTimeGravityAccelerometerMagnitude-mean()
* MeanTimeGravityAccelerometerMagnitude-std()
* MeanTimeBodyAccelerometerJerkMagnitude-mean()
* MeanTimeBodyAccelerometerJerkMagnitude-std()
* MeanTimeBodyGyroscopeMagnitude-mean()
* MeanTimeBodyGyroscopeMagnitude-std()
* MeanTimeBodyGyroscopeJerkMagnitude-mean()
* MeanTimeBodyGyroscopeJerkMagnitude-std()
* MeanFrequencyBodyAccelerometer-mean()-X
* MeanFrequencyBodyAccelerometer-mean()-Y
* MeanFrequencyBodyAccelerometer-mean()-Z
* MeanFrequencyBodyAccelerometer-std()-X
* MeanFrequencyBodyAccelerometer-std()-Y
* MeanFrequencyBodyAccelerometer-std()-Z
* MeanFrequencyBodyAccelerometer-meanFreq()-X
* MeanFrequencyBodyAccelerometer-meanFreq()-Y
* MeanFrequencyBodyAccelerometer-meanFreq()-Z
* MeanFrequencyBodyAccelerometerJerk-mean()-X
* MeanFrequencyBodyAccelerometerJerk-mean()-Y
* MeanFrequencyBodyAccelerometerJerk-mean()-Z
* MeanFrequencyBodyAccelerometerJerk-std()-X
* MeanFrequencyBodyAccelerometerJerk-std()-Y
* MeanFrequencyBodyAccelerometerJerk-std()-Z
* MeanFrequencyBodyAccelerometerJerk-meanFreq()-X
* MeanFrequencyBodyAccelerometerJerk-meanFreq()-Y
* MeanFrequencyBodyAccelerometerJerk-meanFreq()-Z
* MeanFrequencyBodyGyroscope-mean()-X
* MeanFrequencyBodyGyroscope-mean()-Y
* MeanFrequencyBodyGyroscope-mean()-Z
* MeanFrequencyBodyGyroscope-std()-X
* MeanFrequencyBodyGyroscope-std()-Y
* MeanFrequencyBodyGyroscope-std()-Z
* MeanFrequencyBodyGyroscope-meanFreq()-X
* MeanFrequencyBodyGyroscope-meanFreq()-Y
* MeanFrequencyBodyGyroscope-meanFreq()-Z
* MeanFrequencyBodyAccelerometerMagnitude-mean()
* MeanFrequencyBodyAccelerometerMagnitude-std()
* MeanFrequencyBodyAccelerometerMagnitude-meanFreq()
* MeanFrequencyBodyAccelerometerJerkMagnitude-mean()
* MeanFrequencyBodyAccelerometerJerkMagnitude-std()
* MeanFrequencyBodyAccelerometerJerkMagnitude-meanFreq()
* MeanFrequencyBodyGyroscopeMagnitude-mean()
* MeanFrequencyBodyGyroscopeMagnitude-std()
* MeanFrequencyBodyGyroscopeMagnitude-meanFreq()
* MeanFrequencyBodyGyroscopeJerkMagnitude-mean()
* MeanFrequencyBodyGyroscopeJerkMagnitude-std()
* MeanFrequencyBodyGyroscopeJerkMagnitude-meanFreq()
# Coursera Getting and Cleaning Data Project

This repository contains the project dataset and documents for the Coursera 
Getting and Cleaning Data course. 

The data for the project was obtained from the following site: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Dataset Description:

The data link consists of a Human Activity Recognition database that contains data 
collected from the accelerometers from the Samsung Galaxy S smartphone recordings 
of 30 subjects performing activities of daily living (ADL) while carrying the 
waist-mounted smartphone with embedded inertial sensors.
	
Experiments were carried out with a group of 30 volunteers within an age bracket 
of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. 

Using its embedded accelerometer and gyroscope, 3-axial linear acceleration 
and 3-axial angular velocity was captured at a constant rate of 50Hz. 
The experiments were video-recorded to label the data manually. 
The obtained dataset was randomly partitioned into two sets, where 70% of the 
volunteers were selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying 
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 
50% overlap (128 readings/window). 

The sensor acceleration signal, having gravitational and body motion components, 
was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force was assumed to have only low frequency components, therefore 
a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
was obtained by calculating variables from the time and frequency domain.

Contained in this repository is an R script called run_analysis.R that does the following:

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for 
	each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set 
	(called tidy.txt) with the average of each variable for each activity and 
	each subject.

Other documents include:

1.	The final tidy dataset (tidy.txt)
2.	A codebook (Codebook.md)  that describes the variables, the data, 
	and additional transformations that were performed to clean up the data.


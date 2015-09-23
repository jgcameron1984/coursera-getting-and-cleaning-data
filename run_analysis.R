# Download and extract project data into working directory

# Set working directory
setwd("~/Coursera/03.Getting and Cleaning Data/Project/Data")

# Load required packages
library(plyr)
library(reshape2)

# Read activity labels and feature labels:

activity_labels <- read.table("activity_labels.txt", col.names=c("activity", "activity_name"))
features <- read.table("features.txt", col.names=c("index", "feature"))
feature_labels <- as.character(features$feature)

# Keep only columns for mean and standard deviation:

features_subset <- grep("mean|std",feature_labels)
feature_list <- feature_labels[features_subset]

# Read and combine the test and training datasets, including activity and subject identifiers:

features_test <- read.table("X_test.txt")
colnames(features_test) <- c(feature_labels)
features_test_subset <- features_test[,feature_list]
activity_read_test <- read.table("Y_test.txt", col.names=c("activity"))
activity_test <- join(activity_read_test, activity_labels, by="activity", type="left")
subject_test <- read.table("subject_test.txt", col.names=c("subject"))
test_data <- cbind(subject_test, activity_test, features_test_subset)

features_train <- read.table("X_train.txt")
colnames(features_train) <- c(feature_labels)
features_train_subset <- features_train[,feature_list]
activity_read_train <- read.table("Y_train.txt", col.names=c("activity"))
activity_train <- join(activity_read_train, activity_labels, by="activity", type="left")
subject_train <- read.table("subject_train.txt", col.names=c("subject"))
train_data <- cbind(subject_train, activity_train, features_train_subset)

all_data <- rbind(test_data, train_data)

# Reshape data and create tidy dataset:

mdata <- melt(all_data, id=c("subject","activity", "activity_name"), measure.vars=feature_list)
tidy_data <- dcast(mdata, subject + activity + activity_name ~ variable, mean, na.rm=TRUE)

# Add descriptive variable names:

names(tidy_data) <- gsub("^t", "Time", names(tidy_data))
names(tidy_data) <- gsub("^f", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data) <- gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data) <- gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data) <- gsub("BodyBody", "Body", names(tidy_data))

names(tidy_data) <- paste("Mean", names(tidy_data), sep='')
names(tidy_data) <- sub("Meansubject", "Subject", names(tidy_data))
names(tidy_data) <- sub("Meanactivity", "Activity", names(tidy_data))
names(tidy_data) <- sub("Meanactivity_name", "Activity_Name", names(tidy_data))

# Write tidy dataset to a text file:

write.table(tidy_data, "tidy.txt", row.names = FALSE)
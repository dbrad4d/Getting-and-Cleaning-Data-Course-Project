# Getting-and-Cleaning-Data-Course-Project
Submission for peer-graded Data Science project - D. Bradford

# Data
The data used in this analysis was linked to from the course website and represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# run_analysis.R
Instructions were to create one R script called run_analysis.R that does the following:

1.  Merges the training and the test sets to create one data set (test_train).  I did this using the rbind function.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.  I used "grep" and "gsub" to do this.
3.  Uses descriptive activity names to name the activities in the data set.  The data descriptions were used.
4.  Appropriately labels the data set with descriptive variable names.  
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  To do this I used the melt function in the reshape2 library.

# Resulting Dataset
The resulting tidy.txt dataset contains the mean for each activity and each subject and can be used for further analysis.

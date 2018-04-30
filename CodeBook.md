## Code book for tidy.txt file

### Columns
Source of data can be found in README.md file
Code book for source data can also be found in README.md file

[1] "subject"                       "activity"                     "tBodyAccMeanX"               
[4] "tBodyAccMeanY"                 "tBodyAccMeanZ"                "tBodyAccStdX"                
[7] "tBodyAccStdY"                  "tBodyAccStdZ"                 "tGravityAccMeanX"            
[10] "tGravityAccMeanY"             "tGravityAccMeanZ"             "tGravityAccStdX"             
[13] "tGravityAccStdY"              "tGravityAccStdZ"              "tBodyAccJerkMeanX"           
[16] "tBodyAccJerkMeanY"            "tBodyAccJerkMeanZ"            "tBodyAccJerkStdX"            
[19] "tBodyAccJerkStdY"             "tBodyAccJerkStdZ"             "tBodyGyroMeanX"              
[22] "tBodyGyroMeanY"               "tBodyGyroMeanZ"               "tBodyGyroStdX"               
[25] "tBodyGyroStdY"                "tBodyGyroStdZ"                "tBodyGyroJerkMeanX"          
[28] "tBodyGyroJerkMeanY"           "tBodyGyroJerkMeanZ"           "tBodyGyroJerkStdX"           
[31] "tBodyGyroJerkStdY"            "tBodyGyroJerkStdZ"            "tBodyAccMagMean"             
[34] "tBodyAccMagStd"               "tGravityAccMagMean"           "tGravityAccMagStd"           
[37] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"           "tBodyGyroMagMean"            
[40] "tBodyGyroMagStd"              "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"         
[43] "fBodyAccMeanX"                "fBodyAccMeanY"                "fBodyAccMeanZ"               
[46] "fBodyAccStdX"                 "fBodyAccStdY"                 "fBodyAccStdZ"                
[49] "fBodyAccMeanFreqX"            "fBodyAccMeanFreqY"            "fBodyAccMeanFreqZ"           
[52] "fBodyAccJerkMeanX"            "fBodyAccJerkMeanY"            "fBodyAccJerkMeanZ"           
[55] "fBodyAccJerkStdX"             "fBodyAccJerkStdY"             "fBodyAccJerkStdZ"            
[58] "fBodyAccJerkMeanFreqX"        "fBodyAccJerkMeanFreqY"        "fBodyAccJerkMeanFreqZ"       
[61] "fBodyGyroMeanX"               "fBodyGyroMeanY"               "fBodyGyroMeanZ"              
[64] "fBodyGyroStdX"                "fBodyGyroStdY"                "fBodyGyroStdZ"               
[67] "fBodyGyroMeanFreqX"           "fBodyGyroMeanFreqY"           "fBodyGyroMeanFreqZ"          
[70] "fBodyAccMagMean"              "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
[73] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"       "fBodyBodyAccJerkMagMeanFreq" 
[76] "fBodyBodyGyroMagMean"         "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"    
[79] "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"      "fBodyBodyGyroJerkMagMeanFreq"

### Code variables
 
filename - file of downloaded zip file
act_labels - loading UCI HAR Dataset/activity_labels.txt into data frame
features - UCI HAR Dataset/features.txt into data frame
measures - getting mean and standard deviation measures from the features data frame... as integers
train - loading UCI HAR Dataset/train/X_train.txt into data frame
act_train - loading UCI HAR Dataset/train/Y_train.txt into data frame
subject_train - loading UCI HAR Dataset/train/subject_train.txt into data frame
train - combining columns of train, act_train and subject_train data frames
test - loading UCI HAR Dataset/test/X_test.txt into data frame
act_test - loading UCI HAR Dataset/test/Y_test.txt into data frame
subject_test - loading UCI HAR Dataset/test/subject_test.txt into data frame
test - combining columns of test, act_test and subject_test data frames
test_train - merge the train and test data frames and add in descriptive column names from the measures.names character object
test_train.melted - take average of each variable for each subject/activity in test_train data frame and load into new data frame
test_train.mean - use dcast function to create data frame for export to tidy.txt

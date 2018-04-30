library(reshape2)

filename <- "getdata_dataset.zip"

# download file
if (!file.exists(filename)){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    f <- file.path(getwd(), "getdata_dataset.zip")
    download.file(url, f)
}  

# and unzip
if (!file.exists(file.path(getwd(), "UCI HAR Dataset"))) { 
    unzip(filename) 
}

# get activity labels & features
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
act_labels[,2] <- as.character(act_labels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Only get the measurements needed... mean and standard deviation
measures <- grep(".*mean.*|.*std.*", features[,2])
measures.names <- features[measures,2]
measures.names = gsub('-mean', 'Mean', measures.names)
measures.names = gsub('-std', 'Std', measures.names)
measures.names <- gsub('[-()]', '', measures.names)


# load the test & training datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[measures]
act_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(subject_train, act_train, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[measures]
act_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(subject_test, act_test, test)

# then merge & add column names
test_train <- rbind(train, test)
colnames(test_train) <- c("subject", "activity", measures.names)

# turn activities & subjects into factors
test_train$activity <- factor(test_train$activity, levels = act_labels[,1], labels = act_labels[,2])
test_train$subject <- as.factor(test_train$subject)

# stack by subjext...  average of each variable for each activity and each subject
test_train.melted <- melt(test_train, id = c("subject", "activity"))
test_train.mean <- dcast(test_train.melted, subject + activity ~ variable, mean)

## write out to text file
write.table(test_train.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
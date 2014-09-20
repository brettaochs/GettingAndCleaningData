################################################################################
## This R script will create tiny dataset from merged test and training sets  ##
## compiled from the UCI HAR Dataset as required for Coursera course Getting  ## 
## and Cleaning Data course project assignment.                               ##
################################################################################
library(dplyr)

## Load datasets from files located in current working directory:
activity_labels <- read.table("./UCI\ HAR\ Dataset/activity_labels.txt", 
                              col.names = c("ActivityID", "Activity")) 
features <- read.table("./UCI\ HAR\ Dataset/features.txt")["V2"] 

## Load training datasets
x_train <- read.table("./UCI\ HAR\ Dataset/train/X_train.txt")
names(x_train) <- features$V2
y_train <- read.table("./UCI\ HAR\ Dataset/train/Y_train.txt")
names(y_train) <- "Activity"
subject_train <- read.table("./UCI\ HAR\ Dataset/train/subject_train.txt")
names(subject_train) <- "Subjects"

## Load testing datasets
x_test <-read.table("./UCI\ HAR\ Dataset/test/X_test.txt")
names(x_test) <- features$V2
y_test <-read.table("./UCI\ HAR\ Dataset/test/Y_test.txt")
names(y_test) <- "Activity"
subject_test <-read.table("./UCI\ HAR\ Dataset/test/subject_test.txt")
names(subject_test) <- "Subjects"
####################################
## Course Project Steps Followed: ##
####################################
## Step 1: 
## Merge training and test data sets to create two data frames
train_df <- cbind(cbind(subject_train, y_train), x_train)
test_df <- cbind(cbind(subject_test, y_test), x_test)
## Combine "train_df" and "test_df" into one data frame
all_data_df <- rbind(train_df, test_df)

################################################################################
## Step 2: 
## Extract mean and standard deviation measurements
## Wasn't sure whether to include columns of meanFreq so removed those and angle columns
all_data_df <- tbl_df(all_data_df)
means_std_df <- all_data_df %>%
    select(contains("mean()|std()|Subjects|Activity")) %>% 
    select(-(contains("angle|meanFreq()"))) 
    
################################################################################
## Step 3: 
## Name activities in data set with descriptive activity names
means_std_df$Activity <- activity_labels[means_std_df$Activity, 2]

################################################################################
## Step 4: 
## Label the data set with descriptive variable names
names(means_std_df) <- gsub("-mean", "Mean", names(means_std_df))
names(means_std_df) <- gsub("-std", "StandardDeviation", names(means_std_df))
names(means_std_df) <- gsub("[()-]", "", names(means_std_df))
################################################################################
## Step 5: 
## Create secondary independent tidy data set with variable averages for each
## activity and subject
means_std_df <- tbl_df(means_std_df)

tidier_data <- means_std_df %>%
    group_by(Activity, Subjects)%>%
    summarize_each(funs(mean))


tidier_dataset <- aggregate(means_std_df[, 3:ncol(means_std_df)], 
                            list(Subjects = means_std_df$Subjects,
                                 Activity = means_std_df$Activity), mean, na.RM = TRUE)
print(tidier_dataset)
write.table()
################################################################################

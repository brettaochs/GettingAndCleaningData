################################################################################
## This R script will create tiny dataset from merged test and training sets  ##
## compiled from the UCI HAR Dataset as required for Coursera course Getting  ## 
## and Cleaning Data course project assignment.                               ##
################################################################################
## Must load dplyr package to complete .R code
require(dplyr)

## Load datasets from files located in current working directory within UCI HAR
## Dataset folder:
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
## Merge training and test data sets to create two data frames and then combine into 
## on dataframe for rest of project use
train_df <- cbind(cbind(subject_train, y_train), x_train)
test_df <- cbind(cbind(subject_test, y_test), x_test)
all_df <- rbind(train_df, test_df)

################################################################################
## Step 2: 
## Extract mean and standard deviation measurements I removed meanFreq and angle columns
all_df <- tbl_df(all_df)
subset_df <- all_df %>%
    select(contains("mean()|std()|Subjects|Activity")) %>% 
    select(-(contains("angle|meanFreq()"))) 
    
################################################################################
## Step 3: 
## Name activities in data set with descriptive activity names
subset_df$Activity <- activity_labels[subset_df$Activity, 2]

################################################################################
## Step 4: 
## Label the data set with descriptive variable names
names(subset_df) <- gsub("-mean", "Mean", names(subset_df))
names(subset_df) <- gsub("-std", "StandardDeviation", names(subset_df))
names(subset_df) <- gsub("[()-]", "", names(subset_df))

################################################################################
## Step 5: 
## Create secondary independent tidy data set of means for each activity and subject
tidy_df <- subset_df %>%
    group_by(Activity, Subjects)%>%
    summarise_each(funs(mean))

## Write datatset to .txt file for upload to complete assignment
write.table(tidy_df, file = "TidyData.txt", row.names = F, col.names = TRUE)
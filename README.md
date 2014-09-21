## This run_analysis.R script will create tiny dataset from merged test and training sets compiled from the UCI HAR Dataset as required for Coursera Getting and Cleaning Data course project.
################################################################################
* Must load dplyr package to complete .R code
  * dplyr package used to later manipulate data frames and summarize to create tidy dataset
* Load datasets from files located in current working directory within UCI HAR
  * Dataset folder: "UCI HAR Dataset" folder must be in working directory
    * Load training datasets files loaded from "train" folder
    * Load testing datasets files loaded from "test" folder

################################################################################
## Specific Course Project Steps Followed: ##
################################################################################

### Step 1: Merge training and test data sets to create two data frames and then combine into on dataframe for rest of project use
### Step 2: Extract mean and standard deviation measurements I removed meanFreq and angle columns
### Step 3: Name activities in data set with descriptive activity names
### Step 4: Label the data set with descriptive variable names
### Step 5: Create secondary independent tidy data set of means for each activity and subject
### Write datatset to .txt file for upload to complete assignment
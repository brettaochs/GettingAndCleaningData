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
### Step 2: Extract mean and standard deviation measurements 
* I removed meanFreq and angle columns and only kept mean() and std() columns for assignment
### Step 3: Name activities in data set with descriptive activity names
* Used activity names from dataframe to rename for better understanding
### Step 4: Label the data set with descriptive variable names
* Made slight changes to column names by removing () and other symbology to make easier for human reading
### Step 5: Create secondary independent tidy data set of means for each activity and subject
* Used dplyr summarise_each() to get means for each column for subject and activity for total rows of 30 subjects X 6 activities for 180 total rows of data.
### Write datatset to .txt file for upload to complete assignment
This repository includes the following files:
=========================================

- 'README.md': Gives overall instructions for use of run_analysis.R script.

- 'tidy_data.txt': Tidy dataset created using run_analysis.R script to find means of normalized features from previous training and testing datasets. Reported in means of variables for each of 30 subjects across 6 activities.

- 'run_analysis.R': Script to convert UCI Har dataset into TidyData.txt.

Notes: 
======
- Features from original dataset are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file. Now displays 30 subjects and 6 activitier per subject.

For more information about manipulations within this dataset contact: brett.a.ochs@mac.com

## Below are original variable names from UCI HAR dataset and new variable names for tidy_data.txt file for columns that were retained from original dataset

           OriginalColumnNames                        NewColumnNames
1            tBodyAcc-mean()-X                         tBodyAccMeanX
2            tBodyAcc-mean()-Y                         tBodyAccMeanY
3            tBodyAcc-mean()-Z                         tBodyAccMeanZ
4             tBodyAcc-std()-X            tBodyAccStandardDeviationX
5             tBodyAcc-std()-Y            tBodyAccStandardDeviationY
6             tBodyAcc-std()-Z            tBodyAccStandardDeviationZ
7         tGravityAcc-mean()-X                      tGravityAccMeanX
8         tGravityAcc-mean()-Y                      tGravityAccMeanY
9         tGravityAcc-mean()-Z                      tGravityAccMeanZ
10         tGravityAcc-std()-X         tGravityAccStandardDeviationX
11         tGravityAcc-std()-Y         tGravityAccStandardDeviationY
12         tGravityAcc-std()-Z         tGravityAccStandardDeviationZ
13       tBodyAccJerk-mean()-X                     tBodyAccJerkMeanX
14       tBodyAccJerk-mean()-Y                     tBodyAccJerkMeanY
15       tBodyAccJerk-mean()-Z                     tBodyAccJerkMeanZ
16        tBodyAccJerk-std()-X        tBodyAccJerkStandardDeviationX
17        tBodyAccJerk-std()-Y        tBodyAccJerkStandardDeviationY
18        tBodyAccJerk-std()-Z        tBodyAccJerkStandardDeviationZ
19          tBodyGyro-mean()-X                        tBodyGyroMeanX
20          tBodyGyro-mean()-Y                        tBodyGyroMeanY
21          tBodyGyro-mean()-Z                        tBodyGyroMeanZ
22           tBodyGyro-std()-X           tBodyGyroStandardDeviationX
23           tBodyGyro-std()-Y           tBodyGyroStandardDeviationY
24           tBodyGyro-std()-Z           tBodyGyroStandardDeviationZ
25      tBodyGyroJerk-mean()-X                    tBodyGyroJerkMeanX
26      tBodyGyroJerk-mean()-Y                    tBodyGyroJerkMeanY
27      tBodyGyroJerk-mean()-Z                    tBodyGyroJerkMeanZ
28       tBodyGyroJerk-std()-X       tBodyGyroJerkStandardDeviationX
29       tBodyGyroJerk-std()-Y       tBodyGyroJerkStandardDeviationY
30       tBodyGyroJerk-std()-Z       tBodyGyroJerkStandardDeviationZ
31          tBodyAccMag-mean()                       tBodyAccMagMean
32           tBodyAccMag-std()          tBodyAccMagStandardDeviation
33       tGravityAccMag-mean()                    tGravityAccMagMean
34        tGravityAccMag-std()       tGravityAccMagStandardDeviation
35      tBodyAccJerkMag-mean()                   tBodyAccJerkMagMean
36       tBodyAccJerkMag-std()      tBodyAccJerkMagStandardDeviation
37         tBodyGyroMag-mean()                      tBodyGyroMagMean
38          tBodyGyroMag-std()         tBodyGyroMagStandardDeviation
39     tBodyGyroJerkMag-mean()                  tBodyGyroJerkMagMean
40      tBodyGyroJerkMag-std()     tBodyGyroJerkMagStandardDeviation
41           fBodyAcc-mean()-X                         fBodyAccMeanX
42           fBodyAcc-mean()-Y                         fBodyAccMeanY
43           fBodyAcc-mean()-Z                         fBodyAccMeanZ
44            fBodyAcc-std()-X            fBodyAccStandardDeviationX
45            fBodyAcc-std()-Y            fBodyAccStandardDeviationY
46            fBodyAcc-std()-Z            fBodyAccStandardDeviationZ
47       fBodyAccJerk-mean()-X                     fBodyAccJerkMeanX
48       fBodyAccJerk-mean()-Y                     fBodyAccJerkMeanY
49       fBodyAccJerk-mean()-Z                     fBodyAccJerkMeanZ
50        fBodyAccJerk-std()-X        fBodyAccJerkStandardDeviationX
51        fBodyAccJerk-std()-Y        fBodyAccJerkStandardDeviationY
52        fBodyAccJerk-std()-Z        fBodyAccJerkStandardDeviationZ
53          fBodyGyro-mean()-X                        fBodyGyroMeanX
54          fBodyGyro-mean()-Y                        fBodyGyroMeanY
55          fBodyGyro-mean()-Z                        fBodyGyroMeanZ
56           fBodyGyro-std()-X           fBodyGyroStandardDeviationX
57           fBodyGyro-std()-Y           fBodyGyroStandardDeviationY
58           fBodyGyro-std()-Z           fBodyGyroStandardDeviationZ
59          fBodyAccMag-mean()                       fBodyAccMagMean
60           fBodyAccMag-std()          fBodyAccMagStandardDeviation
61  fBodyBodyAccJerkMag-mean()               fBodyBodyAccJerkMagMean
62   fBodyBodyAccJerkMag-std()  fBodyBodyAccJerkMagStandardDeviation
63     fBodyBodyGyroMag-mean()                  fBodyBodyGyroMagMean
64      fBodyBodyGyroMag-std()     fBodyBodyGyroMagStandardDeviation
65 fBodyBodyGyroJerkMag-mean()              fBodyBodyGyroJerkMagMean
66  fBodyBodyGyroJerkMag-std() fBodyBodyGyroJerkMagStandardDeviation

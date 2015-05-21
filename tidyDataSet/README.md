# Tidy data - Course Project  

This Course Project repository should contain three files:

- README.md
- codebook.md
- run_analysis.R

## Codebook

The included codebook describes the contents of data set returned by the run_analysis.R script (data set format: columns, rows and values within it).

## About run_analysis.R

Created and tested using R version 3.2.0.

run_analysis.R -script assumes it can find and read in data from files located in following relative paths:

* ./UCI HAR Dataset/features.txt
* ./UCI HAR Dataset/activity_labels.txt
* ./UCI HAR Dataset/train/X_train.txt
* ./UCI HAR Dataset/train/y_train.txt
* ./UCI HAR Dataset/train/subject_train.txt
* ./UCI HAR Dataset/test/X_test.txt
* ./UCI HAR Dataset/test/y_test.txt
* ./UCI HAR Dataset/test/subject_test.txt

These input files must be manually downloaded and saved from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Script functionality steps
Script executes following tasks:

1. Read in X_train.txt, y_train.txt, subject_train.txt
2. Read in X_test.txt, y_test.txt, subject_test.txt
3. Set column labels for data sets read from X_train.txt and X_test.txt from features.txt
4. Merge data sets y_train and y_test. Also merge data sets subject_train and subject_test.
5. Replace activity values with strings read from activity_labels.txt
6. Merge X_train and X_test data sets.
7. Extract from merged data set only columns with "mean()" or "std()" in it's name.
8. Add columns "activity" and "subject" to data set got from step 7.
9. Create a new tidy data set from data set got from step 8. An average value is calculated for each variable in data set for each activity-subject combination. 
10. Return created tidy data set.

Script stores created tidy data set to file "tidydata.txt".
Data can be read back from file:
tidydata <- read.csv("./tidydata.txt", sep = ";")




___

* Author: hanski76
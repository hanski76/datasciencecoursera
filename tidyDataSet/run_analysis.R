### This function creates a tidy data set based on data extracted from multiple
### files containing recorded human activity data.
### This script assumes the data files can be found in ./UCI HAR Dataset -path.
### This function:
###     1. Merges the training and the test sets to create one data set.
###     2. Extracts only the measurements on the mean and standard deviation
###         for each measurement. 
###     3. Uses descriptive activity names to name the activities in the data set
###     4. Appropriately labels the data set with descriptive variable names. 
###     5. From the data set in step 4, creates a second, independent tidy data 
###         set with the average of each variable for each activity and each subject.
### Function returns the tidy data set.
run_analysis <- function() {
    
    ### Merge the training and test sets to one data set.
    
    # Read training data
    trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")

    # Read activity and subject data for each training data measurements.
    trainingLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
    trainingSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    
    # Read test data
    testData <- read.table("./UCI HAR Dataset/test/X_test.txt")

    # Read activity and subject data for each test data measurements.
    testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
    testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    
    
    # Add variable (column) names according to features.txt.
    features <- read.table("./UCI HAR Dataset/features.txt")
    names(trainingData) <- features[,2]
    names(testData) <- features[,2]
        
    
    # Merge all data from training and test activity and subject tables.
    allLabels <- rbind(trainingLabels, testLabels)
    allSubjects <- rbind(trainingSubjects, testSubjects)
    
    # Set descriptive activity names to activities.
    activityNames <- read.table("./UCI HAR Dataset/activity_labels.txt")
    allLabels <- sapply(allLabels, function(x) activityNames[x,2])
    
    # Merge all data from training and test measurements.
    mergedSet <- rbind(trainingData, testData)
    
        
    ### Extract only the measurements on the mean and 
    ### standard deviation for each measurement.
    
    # Find all variables with name containing "mean" or "std"
    extractCols <- grep("mean|std", names(mergedSet))
    extractedSet <- mergedSet[,extractCols]
    
    # Remove the meanFreq columns included by previous grep.
    extractCols2 <- grep("meanFreq", names(extractedSet))
    extractedSet <- extractedSet[,-extractCols2]
    
    
    # Add activity labels and subjects as 1st and 2nd column.
    extractedSet <- cbind(allLabels, extractedSet)
    extractedSet <- cbind(allSubjects, extractedSet)
    colnames(extractedSet)[1] <- "subject"
    colnames(extractedSet)[2] <- "activity"

    # Label the data set with descriptive variable names.
    
    
    ### Create (independent) tidy data set with the average of each variable 
    ### for each activity and each subject.
    
    # Split extracted data set according to each activity and subject combination.
    # ..And calculate an average for each splitted set of values.
    s <- split(extractedSet, interaction(extractedSet$subject, extractedSet$activity))
    tidySet <- sapply(s,function(x) colMeans(x[, 3:ncol(x)],na.rm=TRUE))

    # Transpose the data frame to have each subject-activity combination as it's own row.
    tidySet <- t(tidySet)

    # Add columns for subject and activity (Again. They were lost at the split phase.)
    # Subject and activity for the row can be extracted from the row name.
    subjectsAndActivities <- unlist(strsplit(rownames(tidySet), "[.]"))
    tidySet <- as.data.frame(cbind(activity = subjectsAndActivities[c(FALSE, TRUE)], tidySet))
    tidySet <- as.data.frame(cbind(subject = subjectsAndActivities[c(TRUE, FALSE)], tidySet))
    
    # Store the tidy set to file
    write.table(tidySet, file = "tidydata.txt", sep = ";", row.names = FALSE)
    tidySet
}
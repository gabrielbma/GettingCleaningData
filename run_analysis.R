## TODO:
## Write CodeBook.md --> GitHub

# This is the parent function used to call other functions
tidySamsungData <- function() {
    # Free up as much memory as possible before beginning
    collectGarbage()
    
    # Ensure all of the data files exist before proceeding
    verifyDataExists()
    
    # Free up as much memory as possible
    collectGarbage()
    
    # Read in the tables and merge them into a single table
    mergedTable <- mergeTables()
    
    # Write the merged data set to a separate TXT file
    write.table(mergedTable, file = "ARyanSMSMergedSamsungData.txt", row.names = FALSE)
    
    # Free up as much memory as possible
    collectGarbage()
    
    # Notify the user that the merged data file was successfully created
    message(Sys.time())
    message("ARyanSMSMergedSamsungData.txt has been created in your working directory")
    
    # Manipulate the merged data table to create the required table of averages
    summaryTable <- summariseData(mergedTable)
    
    # Free up as much memory as possible
    mergedTable <- NULL
    collectGarbage()
    
    # Write the tidy data set to a separate TXT file
    write.table(summaryTable, file = "ARyanSMSTidySamsungData.txt", row.names = FALSE)
    
    # Free up as much memory as possible
    summaryTable <- NULL
    collectGarbage()
    
    # Notify the user that the tidy data file was successfully created
    message(Sys.time())
    message("ARyanSMSTidySamsungData.txt has been created in your working directory")
}

# This function simply calls the Garbage Collector just to free up as much memory as possible
collectGarbage <- function() {
    gc(verbose = FALSE)
}

# This function is used to ensure that all data files exist in their appropriate directory
verifyDataExists <- function() {
    message(Sys.time())
    message("Locating Samsung raw data files")
    # Start with the main directory, UCI HAR Dataset
    if(!file.exists("UCI HAR Dataset")) {
        # Main data directory not found
        stop("UCI HAR Dataset directory not found")
    } else {
        # Then check for the test and train folders
        if(!file.exists("UCI HAR Dataset/test")) {
            # test directory not found
            stop("UCI HAR Dataset/test directory not found")
        } else if(!file.exists("UCI HAR Dataset/train")) {
            # train directory not found
            stop("UCI HAR Dataset/train directory not found")
        } else {
            # Then check for all individual files
            # Create a vector containing all required file names
            fileList <- c("subject_$$","X_$$","y_$$","subDirbody_acc_x_$$")
            fileList <- c(fileList,"subDirbody_acc_y_$$","subDirbody_acc_z_$$")
            fileList <- c(fileList,"subDirbody_gyro_x_$$","subDirbody_gyro_y_$$")
            fileList <- c(fileList,"subDirbody_gyro_z_$$","subDirtotal_acc_x_$$")
            fileList <- c(fileList,"subDirtotal_acc_y_$$","subDirtotal_acc_z_$$")
            fileList <- gsub("subDir","Inertial Signals/",fileList)
            
            # Loop through the test and train directories to ensure the presence of all files
            for(i in c("test","train")) {
                for(j in 1:length(fileList)) {
                    curFile <- paste(gsub("\\$\\$",i,fileList[j]),"txt",sep = ".")
                    curDir <- paste("UCI HAR Dataset",i,sep = "/")
                    if(!file.exists(paste(curDir,curFile,sep = "/"))) {
                        errMsg = paste(paste(curDir,curFile,sep = "/"),"file not found")
                        stop(errMsg)
                    }
                }
            }
        }
    }
}

# This function reads all the appropriate files to memory and merges them together
mergeTables <- function() {
    message(Sys.time())
    message("Extracting data from data files")
    # Read the test and train subjects into memory
    testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
    trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
    # Row bind the subjects
    subjects <- rbind(testSubjects, trainSubjects)
    # Free up memory
    testSubjects <- NULL
    trainSubjects <- NULL
    
    # Read the test and train activities into memory
    testActivities <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
    trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
    # Row bind the activities
    activities <- rbind(testActivities, trainActivities)
    # Free up memory
    testActivities <- NULL
    trainActivities <- NULL
    
    # Read in the features text file
    featList <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
    
    # Find only features that represent a mean or a standard deviation via a logical vector
    featListLog <- NULL
    for(i in 1:length(featList[,1])) {
        featListLog <- c(featListLog, length(grep("mean\\(\\)",featList[i,2])) > 0 | length(grep("std\\(\\)",featList[i,2])) > 0)
    }
    featList <- featList[featListLog,]
    
    # Use the featListLog vector to determine which columns to extract from the data sets
    colsToExtract <- rep("NULL", length(featListLog))
    for(i in 1:length(featListLog)) {
        if(featListLog[i]) {
            colsToExtract[i] <- "numeric"
        }
    }
    
    # Read the test and train data into memory
    testData <- read.table("UCI HAR Dataset/test/X_test.txt", colClasses = colsToExtract, stringsAsFactors = FALSE)
    trainData <- read.table("UCI HAR Dataset/train/X_train.txt", colClasses = colsToExtract, stringsAsFactors = FALSE)
    # Row bind the data sets
    datas <- rbind(testData, trainData)
    # Free up memory
    trainData <- NULL
    testData <- NULL
    featListLog <- NULL
    
    # Column bind the subjects, activities and data together
    bindedData <- cbind(subjects, activities, datas)
    
    # Transform the headers to something a bit more readable
    featList <- transformColumnNames(featList)
    
    # Give the data headers
    names(bindedData) <- c("SubjectID", "Activity", featList[,2])
    
    # Replace the activity numbers with their respective names
    mergedData <- printActivities(bindedData)
    
    # Return the merged table with activity names instead of numbers
    return(mergedData)
}

# This function will transform the given variable names into sensible column headers
transformColumnNames<- function(featList) {
    # First, replace names starting with "t" to "Time"
    featList[,2] <- gsub("^t","Time",featList[,2])
    
    # Then replace names starting with "f" to "Freq"
    featList[,2] <- gsub("^f","Freq",featList[,2])
    
    # Then replace "-mean()" with "Mean"
    featList[,2] <- gsub("-mean\\(\\)","Mean",featList[,2])
    
    # Then replace "-std()" with "STD"
    featList[,2] <- gsub("-std\\(\\)","STD",featList[,2])
    
    # Then remove the hyphen "-" from before the axis direction at the end of the name
    featList[,2] <- gsub("-","",featList[,2])
    View(featList)
    
    # Return the new column name vector
    return(featList)
}

# This function will replace the activity numbers 1-6 with their respective names
printActivities <- function(bindedData) {
    message(Sys.time())
    message("Writing activity names")
    # Read in the activity names and their numbers
    actLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
    
    # Loop through all rows of the bindedData and replace the activity numbers with names
    for(i in 1:length(bindedData$Activity)) {
        bindedData$Activity[i] <- as.character(actLabels[bindedData$Activity[i],2])
    }
    
    # Free up memory
    actLabels <- NULL
    
    # Return the data set back to the merging function
    return(bindedData)
}

# This function takes the merged data and summarises it into the required averages per subject per activity
summariseData <- function(mergedTable) {
    message(Sys.time())
    message("Summarising data")
    # Get the list of activities and sort them alphabetically
    actNames <- unique(mergedTable$Activity)
    actNames <- sort(actNames)
    
    # Create a list of subject ID followed by activity name in 2 separate vectors
    subjects <- NULL
    for(i in 1:length(unique(mergedTable$SubjectID))) {
        subjects <- c(subjects, rep(i, length(actNames)))
    }
    activities <- rep(actNames, length(unique(mergedTable$SubjectID)))
    
    # Column bind the 2 vectors and give them names
    subjAct <- as.data.frame(cbind(subjects, activities))
    names(subjAct) <- c("SubjectID", "Activity")
    
    # Free some memory
    subjects <- NULL
    activities <- NULL
    actNames <- NULL
    
    # Loop through the columns of the merged data table
    for(i in 3:ncol(mergedTable)) {
        tmpCol <- NULL
        # Loop through the rows of subjAct to get the criteria for the mean function from column i
        for(j in 1:length(subjAct$SubjectID)) {
            tmpCol[j] <- mean(mergedTable[mergedTable$SubjectID == subjAct$SubjectID[j] & mergedTable$Activity == subjAct$Activity[j],i])
        }
        # Bind the means to the subjAct table
        subjAct <- as.data.frame(cbind(subjAct, tmpCol))
    }
    # Rename the columns appropriately
    names(subjAct) <- names(mergedTable)
    
    # Return the summary table to the main function for output
    return(subjAct)
}
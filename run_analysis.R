library(dplyr)

# Seting working directory
pathToProject <- "~/Documents/projects/R/data-science-especialization/Get And Cleaning Data/Week 4/Getting-and-Cleaning-Data-Course-Project"
setwd(pathToProject)

# This function downloads and unzip the original data
downloadOriginalData <- function(){
    # Create a temp file to save the download
    temp <- tempfile()
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = temp, method = "curl")
    #unzip the downloaded file
    unzip(temp, exdir = "./")
    # delete the temp file
    unlink(temp)
}

# If original data does not exists download it
if(!dir.exists("UCI HAR Dataset")){
    downloadOriginalData()
}

# This function return a vector with the tidy collum names from features_info.txt
getFeaturesColNames <- function(){
    features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactor = FALSE)

    featuresNames <- sapply(features$V2, function(x){
        # Renaming to descriptive names
        x <- sub("^t", "time", x)
        x <- sub("^f", "frequency", x)
        x <- sub("Acc", "Acceleration", x)
        
        # Removing especial char
        x <- gsub("-", ".", x)
        x <- sub("\\(\\)", "", x)
        x
    })
    
    featuresNames
}

# This function read the X, Y and subject and merges then toghter.
# Also add the colnames and return a dataframe
mountDataSet <- function(datasetName){
    # Create path to "X_{datasetName}.txt"
    xFilePath <- paste0("./UCI HAR Dataset/", datasetName, "/X_", datasetName, ".txt")
    x <- read.table(xFilePath,
                     # 4-
                     # Add colnames from features.txt
                     col.names = getFeaturesColNames() 
                     )

    # Create path to "X_{datasetName}.txt"
    yFilePath <- paste0("./UCI HAR Dataset/", datasetName, "/y_", datasetName, ".txt")
    y <- read.table(yFilePath)

    # Create path to "subject_{datasetName}.txt"
    subjectFilePath <- paste0("./UCI HAR Dataset/", datasetName, "/subject_", datasetName, ".txt")
    subjects <- read.table(subjectFilePath)

    # Add the colluns with the identifier of the subject and activity label
    mergedData <- mutate(x, subject = subjects$V1, activity = y$V1)

    # Return the complete dataset
    mergedData
}

# this function return a vector with the activity names
getDescriptiveActivityNames <- function(){
    dfActivityNames <- read.table("./UCI HAR Dataset/activity_labels.txt")
    dfActivityNames$V2
}

# Reading the data sets
train <- mountDataSet("train")
test <- mountDataSet("test")

# 1-
# Merging the training and the test sets
completeDataSet <- bind_rows(train, test)

# 2-
# Extracts only the measurements on the mean
# and standard deviation for each measurement. 
meanAndStd <- select(completeDataSet, contains(".mean"), contains(".std"),
                         "subject", "activity")

# vector with the activity names
activityNames <- getDescriptiveActivityNames()

# 3-
# Add activity descriptive names to dataset
descriptiveNames <- mutate(meanAndStd, activity = activityNames[activity])

# 5-
# Create a tidy data set with the average of each variable
# for each activity and each subject

# Create grups
averageDataSet <- group_by(descriptiveNames, subject, activity)

# Calcule the average of each variable by group
averageDataSet <- summarise_all(averageDataSet, mean)


write.table(averageDataSet, "./GettingAndCleaningDataProject.txt", row.name = FALSE)

View(averageDataSet)
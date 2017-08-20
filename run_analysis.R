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
    
    # Seting a easier folder name
    if(file.exists("UCI HAR Dataset")){
        file.rename("UCI HAR Dataset", "original-data")
    }
}

# If original data does not exists download it
if(!dir.exists("original-data")){
    downloadOriginalData()
}

# Create a folder to save the tidy data if it does not exists
if(!dir.exists("tidy-data")){
    dir.create("tidy-data")
}

# this functions merges the X, Y and subject datas togheter and returns a data.frame
mergeData <- function(pathToData){
    #geting last part of the path to get the files base name
    basename <- strsplit(pathToOriginalData, "/", fixed = TRUE)
    basename <- unlist(basename)
    basename <- basename[length(basename)]
    basename
    
}

pathToOriginalData <- paste0(pathToProject, "./original-data/UCI HAR Dataset/test")


test <- mergeData(pathToOriginalData)
test

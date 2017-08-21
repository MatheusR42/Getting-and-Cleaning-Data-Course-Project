# Getting and Cleaning Data Course Project

This repository contains the files needed to download, merge and tidy
the Human Activity Recognition Using Smartphones Data Set Version 1.0.

The original experiment data was taking by Smartlab - Non Linear Complex Systems Laboratory at DITEN - Università degli Studi di Genova. More information can be found [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](here).

## run_analysis.R

The magic happens here. 

This script do the follow steps:

* Download the original data set if needed
* Mount the train and test tables
* Merges the tables togheter
* Insert descriptive names to colluns
* Add labels to activity rows
* Extract only the mean an standard deviation measurements
* Group the data by subject and activity
* Create a tidy data set with the average of each variable for each activity and each subject.

## CodeBook.md

This file describe the final data set information, including the variable names,
formats and descriptions
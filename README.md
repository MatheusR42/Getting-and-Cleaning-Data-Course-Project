# Getting and Cleaning Data Course Project

This repository contains the files needed to download, merge, group and tidy
the Human Activity Recognition Using Smartphones Data Set Version 1.0.

The final tidy data set looks like this:

| subjectId     | activity      | timeBodyAcceleration.mean.X  	| timeBodyAcceleration.mean.Y  	|
| ------------- |:-------------:| -----:						| -----:						|
| 1             | STANDING      | 0.2789176 					| -0.03241094 					|
| 1             | WALKING      	|   0.2773308 					|   -0.03238440					|
| ... 			| ...      		|    ... 						|    ... 						|
| 2             | LAYING      	| 0.2813734 					| -0.03198043					|
| 2             | SITTING      	|   0.2770874 					|  -0.03039866					|


The original experiment data was taking by Smartlab - Non Linear Complex Systems Laboratory at DITEN - Università degli Studi di Genova. More information can be found in this link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## run_analysis.R

The magic happens here. 

This script do the follow steps:

* Download the original data set if needed
* Mount the train and test tables
* Merges the tables together
* Insert descriptive names to colluns
* Add labels to activity rows
* Extract only the mean an standard deviation measurements
* Group the data by subject and activity
* Create a tidy data set with the average of each variable for each activity and each subject

## CodeBook.md

This file describe the final data set information, including the variable names,
formats and descriptions.


### Original Data Set License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
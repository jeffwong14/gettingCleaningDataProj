Readme
======

## Description

`run_analysis.R` is the program code for the course project [Getting & Cleaning Data](https://class.coursera.org/getdata-009), it contains 1 function.

- run_analysis - Output an independent tidy data set with the average of each variable for each activity and each subject

### How the script works

The function analyse the data in follow steps

1. Read the data dictionary from the data file
2. Read the test data set and extract the useful columns. It also combine the subject and the activity
3. Read the training data set with similar actions as #2
4. Combine the test data set and the training data set
5. Merge the data dictionary and get the activity name, then remove the activity code column
6. Assign descriptive variable names to the data columns
7. reshape the data sets into tidy data set with average of each variable for each activity and each subject

- - -

## Code Book

refer to [CodeBook.md](CodeBook.md)

- - -
## About the Experiment 
Below are the extracted from Readme inside [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
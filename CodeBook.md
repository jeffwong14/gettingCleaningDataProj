Code Book
======

## Description

The output of the `run_analysis()` function is tidy data set with the average of each variable for each activity and each subject.

The column for the dataset are as follow.

1. subject - An identifier of the subject who carried out the experiment.
2. activity label - the activity measuring, can be (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. timeBodyAccX - Average body acceleration signals from accelerometer in X direction (in time domain)
4. timeBodyAccY - Average body acceleration signals from accelerometer in Y direction (in time domain)
5. timeBodyAccZ - Average body acceleration signals from accelerometer in Z direction (in time domain)
6. timeGravityAccX - Average gravity acceleration signals from accelerometer in X direction (in time domain)
7. timeGravityAccY - Average gravity acceleration signals from accelerometer in Y direction (in time domain)
8. timeGravityAccZ - Average gravity acceleration signals from accelerometer in Z direction (in time domain)
9. timeBodyAccJerkX  - Average body Jerk signals from accelerometer in X direction (in time domain)
10. timeBodyAccJerkY - Average body Jerk signals from accelerometer in Y direction (in time domain)
11. timeBodyAccJerkZ - Average body Jerk signals from accelerometer in Z direction (in time domain)
12. timeBodyGyroX - Average body acceleration signals from gyroscope in X direction (in time domain)
13. timeBodyGyroY - Average body acceleration signals from gyroscope in Y direction (in time domain)
14. timeBodyGyroZ - Average body acceleration signals from gyroscope in Z direction (in time domain)
15. timeBodyGyroJerkX - Average body Jerk signals from gyroscope in X direction (in time domain)
16. timeBodyGyroJerkY - Average body Jerk signals from gyroscope in Y direction (in time domain)
17. timeBodyGyroJerkZ - Average body Jerk signals from gyroscope in Z direction (in time domain)
18. timeBodyAccMag - Average magnitude of body acceleration signals from accelerometer (in time domain)
19. timeGravityAccMag - Average magnitude of gravity acceleration signals from accelerometer (in time domain)
20. timeBodyAccJerkMag - Average magnitude of body Jerk signals from accelerometer (in time domain)
21. timeBodyGyroMag - Average magnitude of body acceleration signals from gyroscope (in time domain)
22. timeBodyGyroJerkMag - Average magnitude of body Jerk signals from gyroscope (in time domain)
23. freqBodyAccX - Average body acceleration signals from accelerometer in X direction (in frequency domain, after FFT)
24. freqBodyAccY - Average body acceleration signals from accelerometer in Y direction (in frequency domain, after FFT)
25. freqBodyAccZ - Average body acceleration signals from accelerometer in Z direction (in frequency domain, after FFT)
26. freqBodyAccJerkX - Average gravity Jerk signals from accelerometer in X direction (in frequency domain, after FFT)
27. freqBodyAccJerkY - Average gravity Jerk signals from accelerometer in Y direction (in frequency domain, after FFT)
28. freqBodyAccJerkZ - Average gravity Jerk signals from accelerometer in Z direction (in frequency domain, after FFT)
29. freqBodyGyroX - Average body acceleration signals from gyroscope in X direction (in frequency domain, after FFT)
30. freqBodyGyroY - Average body acceleration signals from gyroscope in Y direction (in frequency domain, after FFT)
31. freqBodyGyroZ - Average body acceleration signals from gyroscope in Z direction (in frequency domain, after FFT)
32. freqBodyAccMag - Average magnitude of body acceleration signals from accelerometer (in frequency domain, after FFT)
33. freqBodyAccJerkMag - Average magnitude of body Jerk signals from accelerometer (in frequency domain, after FFT)
34. freqBodyGyroMag - Average magnitude of body acceleration signals from gyroscope (in frequency domain, after FFT)
35. freqBodyGyroJerkMag - Average magnitude of body Jerk signals from gyroscope (in frequency domain, after FFT)

- - - 
Below are the feature description for the data from Readme inside [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

###Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean
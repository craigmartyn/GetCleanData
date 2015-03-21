##Codebook for Getting and Cleaning Data Course Project

Describes the variables included in the data set submitted for the project in the "results.txt" file

File contains the following 81 columns:
- Activity: activity description. Factor variable containing one of the following six activity descriptions: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS
, SITTING
, STANDING, LAYING
- Subject: identifier for each subject. Integer variable (1-30 for the 30 study participants)
- One column for each of the mean and standard deviation measurements as described below (79 columns)

File contains 180 rows with each row corresponding to one combination of Activity and Subject.

The 79 measurement columns are labeled using the names in the features.txt file provided with the source data.
Data provided is the mean across all observations of each variable for each combination of Subject and Activity in the source data.
Only variables that measure mean or standard deviation in the base data have been included. This was interpreted to include mean frequency measurements, so the following categories identified in the source data are included:
- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

As noted in the README.txt file provided with the source data, the source data was normalized and bounded within [-1,1], so the data included in "results.txt" contains the means of this normalized base data.
The features_info.txt file provides a description of how the source data was derived and the naming conventions used, and these same names are used in the "results.txt" file: 

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
##Getting and Cleaning Data Course Project

Describes the process used to transform the source data located at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
into the data set "results.txt" submitted for this project.

A description of the variables in the "results.txt" data set is included in the Codebook.md file on this repo.

###Instruction List
The source data is transformed using the script run_analysis.R.
The script does not take any paramaters and can be run in R and the results loaded into "results" by the command results<-run_analysis().
It assumes that the source data files are located in the working directory.

The actions performed by the run_analysis script are:

Read in the source data files. The following source files are used:
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

Merge training and test data sets, such that the resulting files contain one row for each observation across the training and test data sets.
- X_train and X_test are merged into X_traintest
- y_train and y_test are merged into y_traintest
- subject_train and subject_test are merged into subject_traintest

Select only the variables that measure mean or standard deviation by selecting all variables including "mean" or "std" which includes the three categories identified in the source data: 
- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

As noted above mean frequency variables were included, but the variables which were calculated by averaging the signals in a signal window sample as described in the "features_info.txt" file (and labeled "Mean") were not included

The resulting file containing only the data for these measures is X_mstd

Name columns in merged data sets
- The columns in X_mstd are named based on the names for the selected mean or standard deviation variables in the list of features read in from features.txt 
- y_traintest contains one column with the Activity labels and is named "Activity"
- subject_traintest contains one column with the Subject identifiers and is named "Subject"

The numerical activity identifiers in y_traintest are replaced with the descriptive activity names read in from activity_labels.txt

The Subject identifiers, Activity names and mean and standard deviation measurements are combined in one data set (combineddata) by merging the columns in subject_traintest, y_traintest and X_mstd

From the combineddata data set, the mean of each variable for each Activity and Subject is calculated and returned


##Getting and Cleaning Data Course Project

Describes the process used to transform the source data located at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
into the data set "results.txt" submitted for this project.

A description of the variables in the "results.txt" data set is included in the Codebook.md file on this repo.

###Instruction List
The source data is transformed using the script "run_analysis.R" located on this repo.

Before running the script, ensure that the source data files are located in the working directory. The following source files are used:
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

After the script is loaded into R it can be run and the results loaded into "results" by the command: results<-run_analysis().

The script performs the following actions to transform the source data into the resulting data set:
- Merge training and test data sets, such that the resulting files contain one row for each observation across the training and test data sets.
- Select only the variables that measure mean or standard deviation by selecting all variables including "mean" or "std" which includes the three categories identified in the source data: 
-- mean(): Mean value
-- std(): Standard deviation
-- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- As noted above, mean frequency variables were included, but the variables which were calculated by averaging the signals in a signal window sample as described in the "features_info.txt" file (and labeled "Mean") were not included
- Name columns in merged data sets
- Add descriptive activity names
- Calculate and return the mean of each variable for each Activity and Subject
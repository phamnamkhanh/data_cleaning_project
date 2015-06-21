## Files Structure

1) run_analysis.R : contain the code for performing the analysis;

2) \test: folder contains the testing data

3) \traing: folder contains the training data

4) activity_labels.txt: name of the activities

5) features.txt: list of features in original data set

6) features_info.txt: description of features in the original data set

7) project.txt: the final tidy data set of this project

8) README.md: this file

9) README.txt: original readme file

10) code_book.txt: description of the features in the final data set.

## Execution of run_analysis.R
The analysis procedure are commented in the run_analysis.R file with the step's index relevant to the following descriptions:


Step 0: reading inputs files from original data sources with following processing: 
  + read features
  + read  test set input files
  + merge label and predictors for test set
  + read  training input files
  + merge label and predictors for training set

Step 1: combine test set and training set into 1 dataframe


Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

Step 3: Uses descriptive activity names to name the activities in the data set


Step 4: Appropriately labels the data set with descriptive variable names. (completed in Step 0)

Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Step 6: write final dataset to "project.txt"

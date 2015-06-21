## Files Structure

1) run_analysis.R : contain the code for performing the analysis;

2) project.txt: the final tidy data set of this project

3) README.md: this file

4) code_book.txt: description of the features in the final data set.

## Execution of run_analysis.R
First of all, we need to copy the run_analysis.R into the folder of the data source ( inside folder "\UCI HAR Dataset"; same level as folders "\test" and "\train").

Run the analysis file, the final tidy data set is written to file " project.txt"

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

library(dplyr)
library(plyr)
library(reshape2)

#0# reading inputs 
#0#1# read features
feature <- read.table("features.txt",stringsAsFactors=FALSE)

#0#2# read  test set input files
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")


#0#3# merging label and predictors for test set
colnames(subject_test) <- "subject"
colnames(x_test) <- feature$V2
colnames(y_test) <- "activity"
test_set <- data.frame(subject_test,y_test, x_test)



#0#4# read  training input files
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")


#0#5# merging label and predictors for training set
colnames(subject_train) <- "subject"
colnames(x_train) <- feature$V2
colnames(y_train) <- "activity"
train_set <- data.frame(subject_train,y_train, x_train)

#1# combine test set and training set into 1 dataframe
df <-  rbind(train_set, test_set)

#2#1# find the index containing "mean" and "std" columns
mean_v <- grep("mean", feature$V2)
std_v <- grep("std",feature$V2)

#2#2# select only the variables of mean and standard deviation for each mearsurement
df_ex <- select(df, c(mean_v, std_v))

#3# change the name of activity to more descriptive
df_ex$activity <- as.factor(df_ex$activity)
act_label <- read.table("activity_labels.txt",stringsAsFactors=FALSE)
df_ex$activity <- revalue(df_ex$activity, c("1"=act_label$V2[1], "2"=act_label$V2[2], "3"=act_label$V2[3],"4"=act_label$V2[4], "5"=act_label$V2[5], "6"=act_label$V2[6]))

#4# Requirement 4 is complteted in step 0#3# and 0#5#


#5# Create final dataset, which is grouped by the "activity" and "subject", others variables are averaged.  
df_melt <- melt(df_ex, id=c("subject","activity"))
final <- dcast(df_melt, subject + activity ~ variable, mean)

#6# write final dataset to "project.txt"
write.table(final,"project.txt",row.name=FALSE)





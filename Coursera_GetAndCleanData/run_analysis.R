run_analysis <- function() {
# function run_analysis.R
# "run_analysis" returns a table containing a subset of data from the "Human Activity Recognition Using Smartphones Data Set". Specifically, only features that contain mean or standard deviation data are included. To run "run_analysis.R" set your working directory in R to the same path ("directory" on Windows) where you downloaded the dataset from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip because all file names in this script are relative to that path.
  
# MJK, Nov 2015

# step 1
# Merge training and test datasets to create one data set.
Xtrain <- read.table('./train/X_train.txt')
Xtest <- read.table('./test/X_test.txt')
X <- merge(Xtrain, Xtest, all=TRUE)

# step 2
# Extract only the measurements on the mean and standard deviation for each measurement.

# Construct feature data frame containing indices of interest.
feat <- read.table('features.txt') # load feature as data frame
# Convert to character class to enable searching for string patterns.
s = as.character(feat$V2) 
idx_mean <- grep("mean", s) 
idx_std <- grep("std", s)
idx <- sort(append(idx_std, idx_mean)) # get index of interest

# Restrict feature vector by index.
V1 <- feat$V1[idx]
V2 <- feat$V2[idx]
df_feat <- data.frame(V1, V2) 
featureNames <- as.character(df_feat$V2)
X <- X[idx]   # subset X to contain only date of mean and std features

# Load and concatenate the activity vectors.
yTrain <- read.table('./train/y_train.txt')
yTest <- read.table('./test/y_test.txt')
yTrain <- as.numeric(yTrain$V1)
yTest <- as.numeric(yTest$V1)
y <- c(yTrain,yTest)

# Load and concatenate the subject vectors.
subjTrain <- read.table('./train/subject_train.txt')
subjTest <- read.table('./test/subject_test.txt')
subjTrain <- as.numeric(subjTrain$V1)
subjTest <- as.numeric(subjTest$V1)
subj <- c(subjTrain, subjTest)

# step 3: Use descriptive activity names to name the activities in the data set.

# Merge activity vec and data matrix columnwise and convert to a factor.
X <- data.frame(cbind(subj, y, X))
X$y <- factor(X$y)
act<-read.table('activity_labels.txt') # vector V2 holds label strings
levels(X$y) <- act$V2
## Make subject a factor.
X$subj <- factor(X$subj)

# step 4 and 5: Appropriately label the data set with descriptive variable names create a second, independent tidy
# data set with the average of each variable for each activity 
# and each subject.

# Calculate mean value for each activity for each subject.
df <- aggregate(x=X[,3:length(X)], by=list(X$subj,X$y), FUN= mean)
# Assign meaningful column names.
colnames(df)[1:2] <- c('Subject', 'Activity')
colnames(df)[3:length(df)] <- featureNames

write.table(df, file='tidyData.txt', row.names=FALSE)
}

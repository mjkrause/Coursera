run_analysis <- function(urlTraining, urlTest) {
# function run_analysis.R
#
# MJK, Nov 2015

# step 0: download file, 'wget' is the only method I could get
# this command to work (i.e., "curl" does not work
# on my system (Linux, 64-bit, R v3.2)).
download.file( urlTraining, destfileTraining, method="wget" )
df_training = read.csv('dat.csv', stringsAsFactors=FALSE)
download.file( urlTest, destfileTraining, method="wget" )

# step 1: Merge training and test datasets to create one data set.


# step 2: Extract only the measurements on the mean and standard deviation
# for each measurement. 


# step 3: Use descriptive activity names to name the activities in
# the data set.


# step 4: Appropriately label the data set with descriptive variable names.


# step 5: From the data set in step 4, creates a second, independent tidy
# data set with the average of each variable for each activity 
# and each subject.


}

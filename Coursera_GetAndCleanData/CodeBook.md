### Coursera "Getting and Cleaning data": Course project
#### - Create a tidy data table showing means and standard deviation of activity data generated using Smartphone gyroscope and accelerometer data -

##### Description of the "tideData.txt" table
###### The data are from the "Human Activity Recognition Using Smartphones Dataset", compiled by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto at the Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. See www.smartlab.ws and http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information. 

##### Experimental design of the original study and original data representation
###### Experiments have been carried out with a group of 30 volunteers, and each person performed six (6) activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using the phone's embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz were captured. The cohort was originally divided into two groups, but both groups were combined in the "tidyData.txt" table.

##### Content of "tideData.txt"
###### The Smartlab team had originally calculated a _total of 561 features_ from the time domain (denoted by "t" in the prefix) and the frequency domain (denoted by "f" in the prefix) data. Of those 561 features the _"tideData.txt" only contains 79 features_, which represent either mean or standard deviation of select features. Features in "tideData.txt" are organized in columns, with the feature names as headers. The feature names are abbreviated but still self-explenatory. To obtain more information on features refer to 'features_info.txt' in the data folder that can be downloaded from the UCI link shown above. The first 2 _columns of "tideData.txt"_  are Subject and Activity, the remaining 79 columns are features. Si "tideData.txt" contains a total of 81 columns.

###### During the data collection period subjects could engage in the same activity more than once. In that case the mean of all instances of a given activity of a given subject was calculated. Therefore, "tideData.txt" contains one row per subject for one activity. The total number of rows (without the header) is 180 (6 activities performed by 30 subjects). 

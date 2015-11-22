### Coursera "Getting and Cleaning data": Course project
#### - Create a tidy data table showing means and standard deviation of activity data generated using Smartphone gyroscope and accelerometer data -

##### Brief description of the data origin
The data are from the "Human Activity Recognition Using Smartphones Dataset", compiled by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto at the Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. See [the Smartlab website](www.smartlab.ws) for detailed information on the data. For this project the data were downloaded from a [server of the University of California at Irvine ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

##### Experimental design of the original study and original data representation
Experiments have been carried out with a group of **30 volunteers**, and each person performed **six (6) activities**:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

wearing a smartphone (Samsung Galaxy S II) on the waist. Using the phone's embedded accelerometer and gyroscope, 3-axial linear acceleration (body and gravity) and 3-axial angular velocity at a constant sampling rate of 50 Hz were acquired and filtered. The cohort was originally divided into two groups, but both groups were combined in the _tidyData.txt_ table.

##### Content and organization of _tideData.txt_
The Smartlab team had originally calculated a **total of 561 features** from the time domain (denoted by "t" in the feature name prefix) and the frequency domain (denoted by "f" in the feature name prefix) raw data. Of those 561 features the **_tideData.txt_ only contains 79 features**, which represent either mean or standard deviation of select features. Features in "tideData.txt" are organized in columns, with the feature names as headers. The feature names are abbreviated but still self-explenatory. To obtain more information on features refer to _features\_info.txt_ contained in the data folder from the UCI link shown above. The **first 2 columns of _tideData.txt_**  are Subject and Activity, the remaining 79 columns are features. So _tideData.txt_ contains a total of 81 columns.

During the data collection period subjects could engage in the same activity more than once. In that case the mean of all instances of a given activity of a given subject was calculated. Therefore, _tideData.txt_ adheres to the guidlines of a tide dataset and contains one row per subject for one activity. The table is ordered from top to bottom in blocks of one activity for each 30 subhects. The total number of rows (without the header) is 180 (6 activities performed by 30 subjects).

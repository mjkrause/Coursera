### Coursera "Getting and Cleaning data": Course project
#### - Create a tidy data table showing means and standard deviation of activity data generated using Smartphone gyroscope and accelerometer data -

##### Explanation of _run\_analysis.R_
The accompanying code book of_run\_analysis.R_ has some description of the origin of the data and the organization of the output, which is the text file _tideTable.txt_. _run\_analysis.R_ is divided into 5 steps. The individual Functions are commented on in the following:

###### Step 1: Merge training and test datasets to create one data set
In this step two variables, _Xtrain_ and _Xtest_ are loaded as data frames from their respective subfolders, using `read.table`. After that the two data frames are merged into one data frame _X_ using `merge`.

###### Step 2: Extract only the measurements on the mean and standard deviation for each measurement
Next the feature vector is loaded using `read.table` as a data frame and given the variable name _feat_. _feat_ contains two columns, _V1_ and _V2_. _V2_ holds the names of features. _V2_ is converted to a character array and written to variable _s_. After that using `grep` _s_ is searched for strings _mean_ and _std_ in _feat$V2_ to find indices of those features which contain data of means and standard deviations. The two index vectors are then sorted and combined into one index vector _idx_.

_idx_ is now used to index _feat_ to extract only the feature data of interest (i.e., mean and standard deviation) from the _test_ and the _train_ dataset, and consequently the two data sets are combined into a data frame _df\_feat_. A character _featureNames_ is created which will be used later to assign meaningful column names to the output table. Lastly, using _idx_ the data frame _X_ is index to restrict it to the same features as _df\_feat_.

###### Step 3:


###### Step 4:


###### Step 5:

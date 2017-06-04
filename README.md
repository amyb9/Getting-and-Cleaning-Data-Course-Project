# Getting and Cleaning Data Course Project

## Reading in and Cleaning Activities and Features

The script assumes you have downloaded the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and unzipped it to your working directory. 

Once that is done, the run_analysis.R script can be run. 

When the script is run, first the dplyr library is loaded. Then the activity labels are read in. The features are read in and a vector is created from the second column of the features.txt file to be used as column headers. The column names are stripped of dashes and parenthesis in order to fall within tidy data guidelines. 


## Cleaning and Combining Data

The script will then read in the test data, add column names to the data from x_test.txt, and then add the subject_test.txt and y_test.txt data using the cbind function. 

The exact same process is then used for the train data. 

Finally, the train data rows are added to the test data rows using rbind. Column names are set for the first two columns and activity numbers are replaced by the appropriate name.  


## Filtering and Summarizing Data

Once the files have been merged to a single data set, the script will then select only columns for mean or standard deviation. The filtered data set is then grouped by Subject and Activity and the mean of each measurement is calculated for each subject and activity. 


## Generating the Tidy Data Set

The script then generates a tidy data text file that meets the principles of tidy data described by Hadley Wickham in his article in the Journal of Statistical Software. 

The tidy data set can be tested by running the following: 
```r
tidy_test<-read.table("tidy_data.txt", header=TRUE)
```

The codebook has specific descriptions of the tidy data file contents.  


## References

Wickham, Hadley . "Tidy Data." Journal of Statistical Software [Online], 59.10 (2014): 1 - 23. Web. 30 May. 2017
https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf
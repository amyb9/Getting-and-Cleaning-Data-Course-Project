# Tidy Data Set from Human Activity Recognition Using Smartphones Dataset


The purpose of this project was to create a tidy data set that could be used for later analysis from raw data obtained from wearing computing devices. 

## Study Design and Data Processing

Raw data came from a study originally done by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto at the Smartlab - Non Linear Complex Systems Laboratory.

### Collection of the Raw Data 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Notes on the Raw Data 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Creating the Tidy Data File

### Guide to Creating the Tidy Data File 

Steps to create the tidy data file: 
1. Download zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip file to working directory. 
3. Run the run_analysis.R script. 

The tidy data set can be tested by running the following: 
```r
tidy_test<-read.table("tidy_data.txt", header=TRUE)
```

### Cleaning of the Data

The cleaning script for this data reads in and cleans up activity names and column names, adds column names and activities to test and train data, combines test data columns and train data columns, and then combines test data rows with train data rows. Full details of this process can be found in the README.md document. 

## Description of Variables

The tidy_data.txt data set is a data frame with 180 observations of 6 variables. 


### Information on Variables

1  
Subject  
&nbsp;&nbsp;&nbsp;Identifier of the subject who carried out the experiment.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer with range 1-30

2  
Activity   
&nbsp;&nbsp;&nbsp;Description of the activity.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Factor with 6 levels:   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 WALKING_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5 STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6 LAYING  

3, 4, 5  
tBodyAccmeanX           
tBodyAccmeanY           
tBodyAccmeanZ     
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of body acceleration signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

6, 7, 8  
tBodyAccstdX            
tBodyAccstdY            
tBodyAccstdZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of body acceleration signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

9, 10, 11  
tGravityAccmeanX        
tGravityAccmeanY        
tGravityAccmeanZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of gravity acceleration signals in the X, Y and Z directions.    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1] 

12, 13, 14  
tGravityAccstdX         
tGravityAccstdY         
tGravityAccstdZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of gravity acceleration  signals in the X, Y and Z directions.    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

15, 16, 17  
tBodyAccJerkmeanX       
tBodyAccJerkmeanY       
tBodyAccJerkmeanZ   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of body acceleration Jerk signals in the X, Y and Z directions.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

18, 19, 20  
tBodyAccJerkstdX        
tBodyAccJerkstdY        
tBodyAccJerkstdZ   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of body acceleration Jerk signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

21, 22, 23    
tBodyGyromeanX          
tBodyGyromeanY          
tBodyGyromeanZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]


24, 25, 26  
tBodyGyrostdX           
tBodyGyrostdY           
tBodyGyrostdZ   
&nbsp;&nbsp;&nbsp;Standard deviationtime  of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]


27, 28, 29  
tBodyGyroJerkmeanX      
tBodyGyroJerkmeanY      
tBodyGyroJerkmeanZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

30, 31, 32  
tBodyGyroJerkstdX       
tBodyGyroJerkstdY       
tBodyGyroJerkstdZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

33  
tBodyAccMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of the magnitude of body acceleration signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

34  
tBodyAccMagstd   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of the magnitude of body acceleration signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

35  
tGravityAccMagmean    
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of the magnitude of gravity acceleration  signals in the X, Y and Z directions.    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

36  
tGravityAccMagstd  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of the magnitude of gravity acceleration  signals in the X, Y and Z directions.    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

37  
tBodyAccJerkMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of the magnitude of body acceleration Jerk signals in the X, Y and Z directions.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

38  
tBodyAccJerkMagstd   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of the magnitude of body acceleration Jerk signals in the X, Y and Z directions.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

39  
tBodyGyroMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

40  
tBodyGyroMagstd   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

41  
tBodyGyroJerkMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean time of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

42  
tBodyGyroJerkMagstd  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation time of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

43, 44, 45  
fBodyAccmeanX            
fBodyAccmeanY             
fBodyAccmeanZ    
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of body acceleration signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

46, 47, 48  
fBodyAccstdX            
fBodyAccstdY             
fBodyAccstdZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of body acceleration signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

49, 50, 51  
fBodyAccJerkmeanX       
fBodyAccJerkmeanY       
fBodyAccJerkmeanZ   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of body acceleration Jerk signals in the X, Y and Z directions.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

52, 53, 54   
fBodyAccJerkstdX        
fBodyAccJerkstdY        
fBodyAccJerkstdZ   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of body acceleration Jerk signals in the X, Y and Z directions.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

55, 56, 57  
fBodyGyromeanX          
fBodyGyromeanY          
fBodyGyromeanZ  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

58, 59, 60   
fBodyGyrostdX           
fBodyGyrostdY           
fBodyGyrostdZ   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

61  
fBodyAccMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of the magnitude of body acceleration signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

62  
fBodyAccMagstd  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of the magnitude of body acceleration signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

63  
fBodyBodyAccJerkMagmean  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of the magnitude of body acceleration Jerk signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]
 
64  
fBodyBodyAccJerkMagstd  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of the magnitude of body acceleration Jerk signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

65  
fBodyBodyGyroMagmean    
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of the magnitude of angular velocity body signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

66  
fBodyBodyGyroMagstd    
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of the magnitude of angular velocity body signals.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

67  
fBodyBodyGyroJerkMagmean   
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of mean frequency of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]

68  
fBodyBodyGyroJerkMagstd  
&nbsp;&nbsp;&nbsp;Calculated average for each subject and activity of standard deviation frequency of the magnitude of angular velocity body signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numeric and bounded within [-1,1]




Code Book - Peter Cebo's Tidy Data Set
=================

The variables selected for this data set are all average and standard deviation calculations from the study here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The raw data used can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The two raw data sets (test and train) were combined into one data set. Meaningful variable and activity names were assigned. 

Each variable chosen was then summarized by calculating the average across all raw observations for said variable, for a specific subject number (SubjectNumber) and activiy (ActivityNumber or ActivityDescription). The result is the tidy data set in this repo.   

Note that much of the below is taken from the raw data's code book / variable descriptions (features.txt) and modified/shortened slightly. A full list of the variables in the tidy data set follows for reference.

The raw data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated (and used in this analysis) a from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


The complete list of variables in the tidy data set is below.

"SubjectNumber" 

"ActivityDescription" 

"tBodyAcc-mean-X" 

"tBodyAcc-mean-Y" 

"tBodyAcc-mean-Z" 

"tBodyAcc-std-X" 

"tBodyAcc-std-Y" 

"tBodyAcc-std-Z" 

"tGravityAcc-mean-X" 

"tGravityAcc-mean-Y" 

"tGravityAcc-mean-Z" 

"tGravityAcc-std-X" 

"tGravityAcc-std-Y" 

"tGravityAcc-std-Z" 

"tBodyAccJerk-mean-X" 

"tBodyAccJerk-mean-Y" 

"tBodyAccJerk-mean-Z" 

"tBodyAccJerk-std-X" 

"tBodyAccJerk-std-Y" 

"tBodyAccJerk-std-Z" 

"tBodyGyro-mean-X" 

"tBodyGyro-mean-Y" 

"tBodyGyro-mean-Z" 

"tBodyGyro-std-X" 

"tBodyGyro-std-Y" 

"tBodyGyro-std-Z" 

"tBodyGyroJerk-mean-X" 

"tBodyGyroJerk-mean-Y" 

"tBodyGyroJerk-mean-Z" 

"tBodyGyroJerk-std-X" 

"tBodyGyroJerk-std-Y" 

"tBodyGyroJerk-std-Z" 

"tBodyAccMag-mean" 

"tBodyAccMag-std" 

"tGravityAccMag-mean" 

"tGravityAccMag-std" 

"tBodyAccJerkMag-mean" 

"tBodyAccJerkMag-std" 

"tBodyGyroMag-mean" 

"tBodyGyroMag-std" 

"tBodyGyroJerkMag-mean" 

"tBodyGyroJerkMag-std" 

"fBodyAcc-mean-X" 

"fBodyAcc-mean-Y" 

"fBodyAcc-mean-Z" 

"fBodyAcc-std-X" 

"fBodyAcc-std-Y" 

"fBodyAcc-std-Z" 

"fBodyAcc-meanFreq-X" 

"fBodyAcc-meanFreq-Y" 

"fBodyAcc-meanFreq-Z" 

"fBodyAccJerk-mean-X" 

"fBodyAccJerk-mean-Y" 

"fBodyAccJerk-mean-Z" 

"fBodyAccJerk-std-X" 

"fBodyAccJerk-std-Y" 

"fBodyAccJerk-std-Z" 

"fBodyAccJerk-meanFreq-X" 

"fBodyAccJerk-meanFreq-Y" 

"fBodyAccJerk-meanFreq-Z" 

"fBodyGyro-mean-X" 

"fBodyGyro-mean-Y" 

"fBodyGyro-mean-Z" 

"fBodyGyro-std-X" 

"fBodyGyro-std-Y" 

"fBodyGyro-std-Z" 

"fBodyGyro-meanFreq-X" 

"fBodyGyro-meanFreq-Y" 

"fBodyGyro-meanFreq-Z" 

"fBodyAccMag-mean" 

"fBodyAccMag-std" 

"fBodyAccMag-meanFreq"

"fBodyBodyAccJerkMag-mean" 

"fBodyBodyAccJerkMag-std" 

"fBodyBodyAccJerkMag-meanFreq" 

"fBodyBodyGyroMag-mean" 

"fBodyBodyGyroMag-std" 

"fBodyBodyGyroMag-meanFreq" 

"fBodyBodyGyroJerkMag-mean" 

"fBodyBodyGyroJerkMag-std" 

"fBodyBodyGyroJerkMag-meanFreq"

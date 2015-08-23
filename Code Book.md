#Code Book

This code book describes the resuting variables created with the run_analysis.R script.
The takes source data and merges them after transformations and renaming of variables.

##Source Data
Source data for the project is found in:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the source data can be found in:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

##Steps followed in producing the tidy data
1. Download and unzip the source data (training and test data)
2. Load test data and training data
3. Modify varible (column) names
4. merge test and traning data
5. Write tidy data to a file
6. Make mean and SD calculaitons on the tidy data file

##Description of Variables

a) Prefix t denotes time domain signals and prefix f denotes Fourier-transformed signals
b) body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
   (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).Also the magnitude of these three-dimensional signals were 
   calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 


   *subjectId: 1 to 30 identifies the people who took part in the study
   *activity: the activity of the subject during the measurement
   *tBodyAcc-mean-X
   *tBodyAcc-mean-Y
   *tBodyAcc-mean-Z
   *tBodyAcc-std-X
   *tBodyAcc-std-Y
   *tBodyAcc-std-Z
   *tGravityAcc-mean-X
   *tGravityAcc-mean-Y
   *tGravityAcc-mean-Z
   *tGravityAcc-std-X
   *tGravityAcc-std-Y
   *tGravityAcc-std-Z
   *tBodyAccJerk-mean-X
   *tBodyAccJerk-mean-Y
   *tBodyAccJerk-mean-Z
   *tBodyAccJerk-std-X
   *tBodyAccJerk-std-Y
   *tBodyAccJerk-std-Z
   *tBodyGyro-mean-X
   *tBodyGyro-mean-Y
   *tBodyGyro-mean-Z
   *tBodyGyro-std-X
   *tBodyGyro-std-Y
   *tBodyGyro-std-Z
   *tBodyGyroJerk-mean-X
   *tBodyGyroJerk-mean-Y
   *tBodyGyroJerk-mean-Z
   *tBodyGyroJerk-std-X
   *tBodyGyroJerk-std-Y
   *tBodyGyroJerk-std-Z
   *tBodyAccMag-mean
   *tBodyAccMag-std
   *tGravityAccMag-mean
   *tGravityAccMag-std
   *tBodyAccJerkMag-mean
   *tBodyAccJerkMag-std
   *tBodyGyroMag-mean
   *tBodyGyroMag-std
   *tBodyGyroJerkMag-mean
   *tBodyGyroJerkMag-std
   *fBodyAcc-mean-X
   *fBodyAcc-mean-Y
   *fBodyAcc-mean-Z
   *fBodyAcc-std-X
   *fBodyAcc-std-Y
   *fBodyAcc-std-Z
   *fBodyAccJerk-mean-X
   *fBodyAccJerk-mean-Y
   *fBodyAccJerk-mean-Z
   *fBodyAccJerk-std-X
   *fBodyAccJerk-std-Y
   *fBodyAccJerk-std-Z
   *fBodyGyro-mean-X
   *fBodyGyro-mean-Y
   *fBodyGyro-mean-Z
   *fBodyGyro-std-X
   *fBodyGyro-std-Y
   *fBodyGyro-std-Z
   *fBodyAccMag-mean
   *fBodyAccMag-std
   *fBodyBodyAccJerkMag-mean
   *fBodyBodyAccJerkMag-std
   *fBodyBodyGyroMag-mean
   *fBodyBodyGyroMag-std
   *fBodyBodyGyroJerkMag-mean
   *fBodyBodyGyroJerkMag-std

==================================================================

##Human Activity Recognition Using Smartphones Dataset



Version 1.0

==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Universitа degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

==================================================================



The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 



The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



##For each record it is provided:

======================================



- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope. 

- A 561-feature vector with time and frequency domain variables. 

- Its activity label. 

- An identifier of the subject who carried out the experiment.



##Feature Selection 

=================



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 



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





##The list of the variables:

================

"activity"

"subject"

"tBodyAcc.Mean.X"

"tBodyAcc.Mean.Y"

"tBodyAcc.Mean.Z"

"tBodyAcc.Std.X"

"tBodyAcc.Std.Y"

"tBodyAcc.Std.Z"

"tGravityAcc.Mean.X"

"tGravityAcc.Mean.Y"

"tGravityAcc.Mean.Z"

"tGravityAcc.Std.X"

"tGravityAcc.Std.Y"

"tGravityAcc.Std.Z"

"tBodyAccJerk.Mean.X"

"tBodyAccJerk.Mean.Y"

"tBodyAccJerk.Mean.Z"

"tBodyAccJerk.Std.X"

"tBodyAccJerk.Std.Y"

"tBodyAccJerk.Std.Z"

"tBodyGyro.Mean.X"

"tBodyGyro.Mean.Y"

"tBodyGyro.Mean.Z"

"tBodyGyro.Std.X"

"tBodyGyro.Std.Y"

"tBodyGyro.Std.Z"

"tBodyGyroJerk.Mean.X"

"tBodyGyroJerk.Mean.Y"

"tBodyGyroJerk.Mean.Z"

"tBodyGyroJerk.Std.X"

"tBodyGyroJerk.Std.Y"

"tBodyGyroJerk.Std.Z"

"tBodyAccMag.Mean"

"tBodyAccMag.Std"

"tGravityAccMag.Mean"

"tGravityAccMag.Std"

"tBodyAccJerkMag.Mean"

"tBodyAccJerkMag.Std"

"tBodyGyroMag.Mean"

"tBodyGyroMag.Std"

"tBodyGyroJerkMag.Mean"

"tBodyGyroJerkMag.Std"

"fBodyAcc.Mean.X"

"fBodyAcc.Mean.Y"

"fBodyAcc.Mean.Z"

"fBodyAcc.Std.X"

"fBodyAcc.Std.Y"

"fBodyAcc.Std.Z"

"fBodyAccJerk.Mean.X"

"fBodyAccJerk.Mean.Y"

"fBodyAccJerk.Mean.Z"

"fBodyAccJerk.Std.X"

"fBodyAccJerk.Std.Y"

"fBodyAccJerk.Std.Z"

"fBodyGyro.Mean.X"

"fBodyGyro.Mean.Y"

"fBodyGyro.Mean.Z"

"fBodyGyro.Std.X"

"fBodyGyro.Std.Y"

"fBodyGyro.Std.Z"

"fBodyAccMag.Mean"

"fBodyAccMag.Std"

"fBodyBodyAccJerkMag.Mean"

"fBodyBodyAccJerkMag.Std"

"fBodyBodyGyroMag.Mean"

"fBodyBodyGyroMag.Std"

"fBodyBodyGyroJerkMag.Mean"

"fBodyBodyGyroJerkMag.Std"


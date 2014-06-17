==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
     

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

"Subject"                    =  No of Volunteer

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist.

"Activity"                   =  Name of Activities          


Features Explanation:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ       = Body Accelaration Signals 

tGravityAcc-XYZ    = Gravity Accelaration Signals

tBodyAccJerk-XYZ   = Body linear Accelaration Jerk Signals

tBodyGyro-XYZ      = Body angular Velocity signals

tBodyGyroJerk-XYZ  = Body angular Velocity Jerk Signals

tBodyAccMag        = Magnitude of Body Accelaration Signals 
tGravityAccMag     = Magnitude of Gravity Accelaration Signals
tBodyAccJerkMag    = MAgnitude of Body linear accelaration Jerk Signals
tBodyGyroMag       = MAgnitude of body angular velocity signals
tBodyGyroJerkMag   = Magnitude of body angular velocity jerk signals
fBodyAcc-XYZ       = Fast Fourier Transform (FFT) application on Body accelaration signals
fBodyAccJerk-XYZ   = FFT application on Body linear accelaration jerk signals
fBodyGyro-XYZ      = FFT application on Body angular velocity signals
fBodyAccMag        = FFT application on Magnitude of Body accelaration signals
fBodyAccJerkMag    = FFT appliation on Magnitude of Body linear accelaration jerk signals
fBodyGyroMag       = FFT application on Magnitude of body angular velocity signals 
fBodyGyroJerkMag   = FFT application on Magnitude of body angular velocity jerk signals

The set of variables that were estimated from these signals are: 

mean(): Mean value
std():  Standard deviation

Data Set 2:

In data set two Mean of each variable is given for each activity and volunteer.

Notes: 
======
- Features are normalized and bounded within [-1,1].

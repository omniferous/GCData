The data contained in the dataset was generated in an experiment measuring the output from an accelerator and a gyroscope located within a Samsung Galaxy S 2 worn by 100 volunteers. The volunteer's results were randomly partitioned into 2 sets representing 70% training data and 30% test data. For more information regarding the general experiment parameters read the README.txt included in the data zip file.

Initially the data is stored in 8 separate files with notes provided below:

activity_labels.txt - File contains a list of the activities carried out with an assigned numeric code which is used in place of the activity name in the other data files.

features.txt - Contains the list of items measured as well as a numeric value for each "feature" which is not used in the other data files.

subject_test.txt - Each row identifies the subject who performed the activity for each window sample ranging from 1 to 30.

subject_train.txt - Each row identifies the subject who performed the activity for each window sample ranging from 1 to 70.  

x_train.txt - Each row represents one set of results measured from a training subject doing a particular activity

y_train.txt - Each row represents a numeric code for the activity being measured

x_test.txt - Each row represents one set of results measured from a test subject doing a particular activity

y_test.txt - Each row represents a numeric code for the activity being measured

Steps to construct the data set (done by the script):

1. Vertically join y_test to x_test. 
2. Vertically join subject_test to the output of step 1.
3. Repeat steps 1 and 2 for the train data.
4. Horizontally join the test and train data.
5. Extract all variables that contain the words "mean" or "std" and store with subject ID and activity.
6. Calculate the mean of each variable (aside from subject ID and activity) producing a table containing results for each subject completing each activity (s * a * var count = 30 * 6 * 86)

The variables in results.txt are listed below with brief descriptions. Note that all variables (aside from Subject.ID and Activity) are means taken for the subject carrying out the activity.

Subject.ID – Unique identifier signifying who was measured. Range from 1 to 30

Activity – Show the activity measured. Values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

TimeBodyAcc.mean...X 
TimeBodyAcc.mean...Y 
TimeBodyAcc.mean...Z 
TimeBodyAcc.std...X 
TimeBodyAcc.std...Y 
TimeBodyAcc.std...Z 
TimeGravityAcc.mean...X 
TimeGravityAcc.mean...Y 
TimeGravityAcc.mean...Z 
TimeGravityAcc.std...X 
TimeGravityAcc.std...Y 
TimeGravityAcc.std...Z 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag)

TimeBodyAccJerk.mean...X 
TimeBodyAccJerk.mean...Y 
TimeBodyAccJerk.mean...Z 
TimeBodyAccJerk.std...X 
TimeBodyAccJerk.std...Y 
TimeBodyAccJerk.std...Z 
TimeBodyGyro.mean...X 
TimeBodyGyro.mean...Y 
TimeBodyGyro.mean...Z 
TimeBodyGyro.std...X 
TimeBodyGyro.std...Y 
TimeBodyGyro.std...Z 
TimeBodyGyroJerk.mean...X 
TimeBodyGyroJerk.mean...Y 
TimeBodyGyroJerk.mean...Z 
TimeBodyGyroJerk.std...X 
TimeBodyGyroJerk.std...Y 
TimeBodyGyroJerk.std...Z 
TimeBodyAccMag.mean.. 
TimeBodyAccMag.std.. 
TimeGravityAccMag.mean.. 
TimeGravityAccMag.std.. 
TimeBodyAccJerkMag.mean.. 
TimeBodyAccJerkMag.std.. 
TimeBodyGyroMag.mean.. 
TimeBodyGyroMag.std.. 
TimeBodyGyroJerkMag.mean.. 
TimeBodyGyroJerkMag.std..

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag. 

FrequencyBodyAcc.mean...X 
FrequencyBodyAcc.mean...Y 
FrequencyBodyAcc.mean...Z 
FrequencyBodyAcc.std...X 
FrequencyBodyAcc.std...Y 
FrequencyBodyAcc.std...Z 
FrequencyBodyAcc.meanFreq...X 
FrequencyBodyAcc.meanFreq...Y 
FrequencyBodyAcc.meanFreq...Z 
FrequencyBodyAccJerk.mean...X 
FrequencyBodyAccJerk.mean...Y 
FrequencyBodyAccJerk.mean...Z 
FrequencyBodyAccJerk.std...X 
FrequencyBodyAccJerk.std...Y 
FrequencyBodyAccJerk.std...Z 
FrequencyBodyAccJerk.meanFreq...X 
FrequencyBodyAccJerk.meanFreq...Y 
FrequencyBodyAccJerk.meanFreq...Z 
FrequencyBodyGyro.mean...X 
FrequencyBodyGyro.mean...Y 
FrequencyBodyGyro.mean...Z 
FrequencyBodyGyro.std...X 
FrequencyBodyGyro.std...Y 
FrequencyBodyGyro.std...Z 
FrequencyBodyGyro.meanFreq...X 
FrequencyBodyGyro.meanFreq...Y 
FrequencyBodyGyro.meanFreq...Z 
FrequencyBodyAccMag.mean.. 
FrequencyBodyAccMag.std.. 
FrequencyBodyAccMag.meanFreq.. 
FrequencyBodyBodyAccJerkMag.mean.. 
FrequencyBodyBodyAccJerkMag.std.. 
FrequencyBodyBodyAccJerkMag.meanFreq.. 
FrequencyBodyBodyGyroMag.mean.. 
FrequencyBodyBodyGyroMag.std.. 
FrequencyBodyBodyGyroMag.meanFreq..
FrequencyBodyBodyGyroJerkMag.mean.. 
FrequencyBodyBodyGyroJerkMag.std.. 
FrequencyBodyBodyGyroJerkMag.meanFreq.. 

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable.

angle.tBodyAccMean.gravity. 
angle.tBodyAccJerkMean..gravityMean. 
angle.tBodyGyroMean.gravityMean. 
angle.tBodyGyroJerkMean.gravityMean. 
angle.X.gravityMean. 
angle.Y.gravityMean. 
angle.Z.gravityMean.



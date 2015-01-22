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
5. 

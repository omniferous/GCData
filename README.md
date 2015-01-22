# GCData
Peer reviewed project for Getting and Cleaning Data

This script, run_analysis.R, manipulates datafiles containing measurements taken on people wearing a smartphone. The script collates all the data taken into a single data set then extracts the mean and std measurements. The output is the mean calculated on the extracted measurements.

Before running the script you will need to download the data from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Place the script in the directory that contains the subdirectory UCI HAR Dataset which is created when you unpack the zip file. If you have renamed the subdirectory or any of the files from the zipped file the script will not work. The paths/files that the script uses are listed below:

./UCI HAR Dataset/activity_labels.txt

./UCI HAR Dataset/features.txt

./UCI HAR Dataset/test/subject_test.txt

./UCI HAR Dataset/test/y_test.txt

./UCI HAR Dataset/test/X_test.txt

./UCI HAR Dataset/train/subject_train.txt

./UCI HAR Dataset/train/y_train.txt

./UCI HAR Dataset/train/X_train.txt

The scipt makes use of the following libraries - dplyr, tidyr, data.table. You will need to install these yourself prior to running the script by making use of the install.packages() function in RStudio. If you are unsure how this function works access help via ?install.packages. The script will load the libraries so you won't have to but they will need to be installed first.

The output file result.txt will be placed in the same directory as the script. 

For details of the code see the comments in the script.
For details of the data see the Codebook.md file in this repo https://github.com/omniferous/GCData/.

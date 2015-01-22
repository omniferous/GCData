# librarys to load
library(dplyr)
library(tidyr)
library(data.table)

# Import the activity labels and separate them from the numeric value
activityLabels <- read.csv("UCI HAR Dataset/activity_labels.txt",header = FALSE, col.names = "data")
activityLabels <- separate(activityLabels, "data", into=c("Activity.code","Activity"),sep=" ")

# Import the feature labels and separate them from the numeric values
featureLabels <- read.csv("UCI HAR Dataset/features.txt",sep = "\n",header = FALSE, col.names = "Features")
featureLabels <- separate(featureLabels, "Features", into=c("Feature.code","Feature"),sep=" ")

# Load and combine the test results - note row number in testResults as it wasn't reading in correctly without it
testSubject <- read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE, col.names="Subject.ID")
testActivity <- read.csv("UCI HAR Dataset/test/y_test.txt",header=FALSE, col.names="Activity.code")
testResults <- read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE, col.names=featureLabels$Feature, nrows = 2947)
testCompiled <- cbind(testSubject,testActivity,testResults)

# Load and combine the training results - once again the row number is used for loading the Results
trainSubject <- read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE, col.names="Subject.ID")
trainActivity <- read.csv("UCI HAR Dataset/train/y_train.txt",header=FALSE, col.names="Activity.code")
trainResults <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE, col.names=featureLabels$Feature, nrows = 7352)
trainCompiled <- cbind(trainSubject,trainActivity,trainResults)

# Combine all the results into a single table - Part 1 Complete
draftResults <- rbind(testCompiled, trainCompiled)

# Import the Activity labels "Walking" etc and drop the Activity.code column - Part 3 Complete
# Then rearrange columns so Subject is first 
draftResults <- merge(activityLabels, draftResults, by.x = "Activity.code", by.y = "Activity.code", all = TRUE)
draftResults$Activity.code <- NULL
draftResults <- draftResults[,c(2,1,3:563)]

# Extract the means, stds, user, activity - Part 2 Complete
dataColumns <- grep("^Sub|^Act|[Mm]ean|std",names(draftResults), value=TRUE)
tidyData <- data.table(draftResults[,dataColumns])

# Replace instances of t with time and f with frequency for variable names - Part 4 Complete
setnames(tidyData, gsub("^t", "Time", names(tidyData)))
setnames(tidyData, gsub("^f", "Frequency", names(tidyData)))

# Compute the means of the data columns for each user/activity pair and store in a different data set - Part 5 Complete
tidyMeanData <- tidyData[,lapply(.SD, mean, na.rm=TRUE), by=c("Subject.ID","Activity")]


# Write out the data set to a file

write.table(tidyMeanData,file="result.txt",quote=FALSE, row.names = FALSE)

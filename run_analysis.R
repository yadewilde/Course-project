# Set working directory
setwd("~/Coursera/Data science/Getting and cleaning data")

temp <- tempfile()
file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("datazip")){dir.create("datazip")}
download.file(file, temp)
unzip(temp, exdir="datazip/data")

# Set new working directory
setwd("~/Coursera/Data science/Getting and cleaning data/datazip/data/UCI HAR Dataset")

# Import test and train datasets
train <- read.table("train/X_train.txt", sep="")
test <- read.table("test/X_test.txt", sep="")

# Import variable labels
varlab <- read.table("features.txt", sep="")

# Appropriately labels the data set with descriptive variable names (1/2)
# Set labels
colnames(train) <- varlab[,2]
colnames(test) <- varlab[,2]

# Import subjects
trainsubject <- read.table("train/subject_train.txt", sep="")
colnames(trainsubject) <- "Subject"
testsubject <- read.table("test/subject_test.txt", sep="")
colnames(testsubject) <- "Subject"

# Import activities
trainacti <- read.table("train/y_train.txt", sep="")
testacti <- read.table("test/y_test.txt", sep="")

# Import activities labels
actilabels <- read.table("activity_labels.txt", sep="")

# Use descriptive activity names to name the activities in the data set
# Merge activities and activities labels
trainactilab <- merge(trainacti, actilabels, by="V1")
trainactilab <- as.data.frame(trainactilab[,2])
colnames(trainactilab) <- "Activity"

testactilab <- merge(testacti, actilabels, by="V1")
testactilab <- as.data.frame(testactilab[,2])
colnames(testactilab) <- "Activity"

# Cbind subject, activities and data
datatrain <- cbind(trainsubject, trainactilab, train)
datatest <- cbind(testsubject, testactilab, test)

# Merges the training and the test sets to create one data set 
Data <- rbind(datatrain, datatest)

# Extracts only the measurements on the mean 
# and standard deviation for each measurement
col <- colnames(Data)
meancol <- grep("mean()", col, fixed=TRUE)
stdcol <- grep("std()", col, fixed=TRUE)
colselect <- c(1,2, meancol, stdcol)
DataSub <- Data[, colselect]

# Appropriately labels the data set with descriptive variable names
labels <- colnames(DataSubCast)
labels <- gsub("Acc", " from accelerometer ", labels)
labels <- gsub("Gyro", " from gyroscope", labels)  
labels <- gsub("tBody", "Time of body acceleration signal", labels)  
labels <- gsub("tGravity", "Time of gravity acceleration signal", labels)  
labels <- gsub("Jerk", " - Jerk signal ", labels)  
labels <- gsub("fBody", "Frequency domain signal of body", labels)  
labels <- gsub("bodyBody", "body", labels)  
labels <- gsub("-mean()", "- Average ", labels)
labels <- gsub("Mag", " - Magnitude ", labels)
labels <- gsub("-std()", "standard deviation ", labels)
labels <- gsub("\\(", "", labels)
labels <- gsub("\\)", "", labels)
labels <- gsub("- -", "- ", labels) 

colnames(DataSub) <- labels 

# Creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject
install.packages("reshape")
library(reshape)
DataSubMelt <- melt(DataSub, id.vars = c("Subject", "Activity"))
DataSubCast <- dcast(Subject + Activity  ~ variable, data = DataSubMelt, fun = mean)
DataSubCast <- DataSubCast[order(DataSubCast$Subject, DataSubCast$Activity),]

colnames(DataSubCast)
# Export the file
library(foreign)
write.table(DataSubCast, "Data.txt", row.names=FALSE)


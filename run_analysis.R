#Question no. 1
testData<- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
trainingData<- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
totalData <- rbind(testData, trainingData)

#Question no. 2
summary(totalData)
str(totalData)
cols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 542:543, 552 )
meanstdSubset <- totalData[,cols]
str(meanstdSubset)

#Question no. 3
activityLabelData<- read.table("./UCI HAR Dataset/activity_lacitiabels.txt", header=FALSE)
str(activityLabelData)
#activityFactor <- factor(activityLabelData[,2])
activityFactor <- factor(activityLabelData[,2], labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#Question no. 4
testLabelData<- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
trainingLabelData<- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
totalLabelData <- rbind(testLabelData, trainingLabelData)



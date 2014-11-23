run_analysis <- function() {
    #reading the data dictionary
    feature <- read.table("features.txt", col.names = c("k", "names"))
    lbl <- read.table("activity_labels.txt", col.names = c("code", "activity"))
    
    #reading Test Data
    rawTest <- read.table("test/X_test.txt", col.names = feature$names)
    testData <- rawTest[ , c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                             266:271,345:350,424:429,503:504,516:517,529:530,542:543)]
    testData$lblCde <- read.table("test/y_test.txt", col.names = c("lblCde"))$lblCde
    testData$subject <- read.table("test/subject_test.txt", col.names = c("subject"))$subject
    
    #reading Training Data
    rawTrain <- read.table("train/X_train.txt", col.names = feature$names)
    trainData <- rawTrain[ , c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                             266:271,345:350,424:429,503:504,516:517,529:530,542:543)]
    trainData$lblCde <- read.table("train/y_train.txt", col.names = c("lblCde"))$lblCde
    trainData$subject <- read.table("train/subject_train.txt", col.names = c("subject"))$subject
    
    #Combine the Test and Traing Data
    allData <- rbind(testData, trainData)
    
    #merge and get the activity name
    allData <- merge(allData, lbl, by.x = "lblCde", by.y = "code", all.x = T, sort = F )
    #remove the activity code
    allData <- allData[ , names(allData) != "lblCde"]
    
    #assign the columns with appropriate names
    names(allData) <- c(
        "timeBodyAccMeanX","timeBodyAccMeanY","timeBodyAccMeanZ","timeBodyAccMStdX","timeBodyAccMStdY","timeBodyAccMStdZ",
        "timeGravityAccMeanX","timeGravityAccMeanY","timeGravityAccMeanZ","timeGravityAccStdX","timeGravityAccStdY","timeGravityAccStdZ",
        "timeBodyAccJerkMeanX","timeBodyAccJerkMeanY","timeBodyAccJerkMeanZ","timeBodyAccJerkStdX","timeBodyAccJerkStdY","timeBodyAccJerkStdZ",
        "timeBodyGyroMeanX","timeBodyGyroMeanY","timeBodyGyroMeanZ","timeBodyGyroStdX","timeBodyGyroStdY","timeBodyGyroStdZ","timeBodyGyroJerkMeanX",
        "timeBodyGyroJerkMeanY", "timeBodyGyroJerkMeanZ", "timeBodyGyroJerkStdX", "timeBodyGyroJerkStdY", "timeBodyGyroJerkStdZ",
        "timeBodyAccMagMean", "timeBodyAccMagStd", "timeGravityAccMagMean", "timeGravityAccMagStd", "timeBodyAccJerkMagMean", "timeBodyAccJerkMagStd",
        "timeBodyGyroMagMean", "timeBodyGyroMagStd", "timeBodyGyroJerkMagMean", "timeBodyGyroJerkMagStd",
        "freqBodyAccMeanX", "freqBodyAccMeanY", "freqBodyAccMeanZ", "freqBodyAccStdX", "freqBodyAccStdY", "freqBodyAccStdZ",
        "freqBodyAccJerkMeanX", "freqBodyAccJerkMeanY", "freqBodyAccJerkMeanZ", "freqBodyAccJerkStdX", "freqBodyAccJerkStdY", "freqBodyAccJerkStdZ",
        "freqBodyGyroMeanX", "freqBodyGyroMeanY", "freqBodyGyroMeanZ", "freqBodyGyroStdX", "freqBodyGyroStdY", "freqBodyGyroStdZ",
        "freqBodyAccMagMean", "freqBodyAccMagStd", "freqBodyAccJerkMagMean", "freqBodyAccJerkMagStd", "freqBodyGyroMagMean", "freqBodyGyroMagStd",
        "freqBodyGyroJerkMagMean", "freqBodyGyroJerkMagStd", "subject", "activities"
    )
    
    #
    library(plyr)
    source
    #output the tidy data set with average of each variable for each activity and each subject
    ddply(allData, c("subject", "activities"), summarize, timeBodyAccX=mean(timeBodyAccMeanX),
          timeBodyAccY=mean(timeBodyAccMeanY),
          timeBodyAccZ=mean(timeBodyAccMeanZ),
          timeGravityAccX=mean(timeGravityAccMeanX),
          timeGravityAccY=mean(timeGravityAccMeanY),
          timeGravityAccZ=mean(timeGravityAccMeanZ),
          timeBodyAccJerkX=mean(timeBodyAccJerkMeanX),
          timeBodyAccJerkY=mean(timeBodyAccJerkMeanY),
          timeBodyAccJerkZ=mean(timeBodyAccJerkMeanZ),
          timeBodyGyroX=mean(timeBodyGyroMeanX),
          timeBodyGyroY=mean(timeBodyGyroMeanY),
          timeBodyGyroZ=mean(timeBodyGyroMeanZ),
          timeBodyGyroJerkX=mean(timeBodyGyroJerkMeanX),
          timeBodyGyroJerkY=mean(timeBodyGyroJerkMeanY),
          timeBodyGyroJerkZ=mean(timeBodyGyroJerkMeanZ),
          timeBodyAccMag=mean(timeBodyAccMagMean),
          timeGravityAccMag=mean(timeGravityAccMagMean),
          timeBodyAccJerkMag=mean(timeBodyAccJerkMagMean),
          timeBodyGyroMag=mean(timeBodyGyroMagMean),
          timeBodyGyroJerkMag=mean(timeBodyGyroJerkMagMean),
          freqBodyAccX=mean(freqBodyAccMeanX),
          freqBodyAccY=mean(freqBodyAccMeanY),
          freqBodyAccZ=mean(freqBodyAccMeanZ),
          freqBodyAccJerkX=mean(freqBodyAccJerkMeanX),
          freqBodyAccJerkY=mean(freqBodyAccJerkMeanY),
          freqBodyAccJerkZ=mean(freqBodyAccJerkMeanZ),
          freqBodyGyroX=mean(freqBodyGyroMeanX),
          freqBodyGyroY=mean(freqBodyGyroMeanY),
          freqBodyGyroZ=mean(freqBodyGyroMeanZ),
          freqBodyAccMag=mean(freqBodyAccMagMean),
          freqBodyAccJerkMag=mean(freqBodyAccJerkMagMean),
          freqBodyGyroMag=mean(freqBodyGyroMagMean),
          freqBodyGyroJerkMag=mean(freqBodyGyroJerkMagMean))
}
#load the raw data and rename columns

  subject_test = read.table("UCI_HAR/test/subject_test.txt")
  X_test = read.table("UCI_HAR/test/X_test.txt")
  Y_test = read.table("UCI_HAR/test/Y_test.txt")
  subject_train = read.table("UCI_HAR/train/subject_train.txt")
  X_train = read.table("UCI_HAR/train/X_train.txt")
  Y_train = read.table("UCI_HAR/train/Y_train.txt")
    
#load feature and activity labels with the columns named appropriately

  features <- read.table("UCI_HAR/features.txt", col.names=c("featureId", "featureLabel"))
  activities <- read.table("UCI_HAR/activity_labels.txt", col.names=c("activityId", "activityLabel"))

  #modify and match the character strings 
  activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
  subsetFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel) #note \\ before special characters like (, $ etc
  
#merge test and training data and name columns
  subject <- rbind(subject_test, subject_train)
  names(subject) <- "subjectId"
  X <- rbind(X_test, X_train)
  X <- X[, subsetFeatures]
  names(X) <- gsub("\\(|\\)", "", features$featureLabel[subsetFeatures])
  Y <- rbind(Y_test, Y_train)
  names(Y) = "activityId"
  activity <- merge(Y, activities, by="activityId")$activityLabel

#Tidy data with mean and SD calculations
  #make a datatable and write the tidy data
  data <- cbind(subject, X, activity)
  write.table(data, "tidy_data.txt")

  #make mean and SD calcualtions on the data table
  library(data.table) #Assuming data.table package is installed
  DataTable <- data.table(data)
  DT<- DataTable[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(DT, "tidy_data_calculations.txt", row.name = FALSE)
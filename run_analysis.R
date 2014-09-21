#Please see the README file for details and pre-requisites!
#First, read in all the necessary data
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
X_train <- read.table("./train/X_train.txt")
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt")
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")

#Now, as per step 1, merge the data together into one data set.
#Note that we are simply going ahead with combining the data here, 
#but there was analysis (e.g. checking dimensions of tables) done to 
#make sure the data is being stitched together properly.

dataSet <- rbind(X_train,X_test)
subjectData <- rbind(subject_train,subject_test)
yData <- rbind(y_train,y_test)
dataSet <- cbind(dataSet,subjectData,yData)
#This completes step #1.

#Next, we need to extract all (and only) the variables that are means or stdevs. (Step #2)
#We begin by creating an index that identifies the index locations of all such variables.
#This is accomplished via a grep on the features data set.
varIndex <- grep("mean|std", features[,2])
#Now, we create a second dataSet based on this index. This completes Step #2.
dataSet2 <- dataSet[,varIndex]
#We need to add back in the last two columns from dataSet since our index ommitted them.
dataSet2 <- cbind(dataSet2,dataSet[,562],dataSet[,563])

#To complete Step #3, we need to add descriptive activity names to the dataSet.
#First, name the columns in each set appropriately.
colnames(dataSet2)[81] <- "Activity Number"
colnames(dataSet2)[80] <- "Subject Number"
colnames(activity_labels)[1] <- "Activity Number"
colnames(activity_labels)[2] <- "Activity Description"
#Now, merge the data sets. This completes step #3.
dataSet2 <- merge(dataSet2,activity_labels)
#Here, we notice that the Activity Number column is now the first column in the data frame.
#Since we don't necessarily like this, we employ a function to move the column to a more appropriate location.
#Please note this function was taken from: http://stackoverflow.com/questions/18339370/reordering-columns-in-a-large-dataframe
moveMe <- function(data, tomove, where = "last", ba = NULL) {
  temp <- setdiff(names(data), tomove)
  x <- switch(
    where,
    first = data[c(tomove, temp)],
    last = data[c(temp, tomove)],
    before = {
      if (is.null(ba)) stop("must specify ba column")
      if (length(ba) > 1) stop("ba must be a single character string")
      data[append(temp, values = tomove, after = (match(ba, temp)-1))]
    },
    after = {
      if (is.null(ba)) stop("must specify ba column")
      if (length(ba) > 1) stop("ba must be a single character string")
      data[append(temp, values = tomove, after = (match(ba, temp)))]
    })
  x
}
#Now we use the function to move Activity Number to before Activity Description
dataSet2 <- moveMe(dataSet2, "Activity Number", "before", "Activity Description")


#To complete Step #4, we use the names from the features data set, removing the needless "()" in some instances.
#First, we strip the V from the colnames in our main dataSet
for(i in 1:79) { colnames(dataSet2)[i] <- gsub("V","",colnames(dataSet2)[i])}
#Next, replace the numbers with the corresponding names from the features data set.
for(i in 1:79) { colnames(dataSet2)[i] <- gsub("\\(\\)","",features[as.numeric(colnames(dataSet2)[i]),2])}
#This completes Step #4.

#Now, creating a tidy data set. (Note that the reshape (and/or? reshape2) package must be installed, if not installed already)
#First we remove spaces from the colnames (perhaps unnecessary but make is easier to work with melt and dcast)
> colnames(dataSet2)[80] <- "SubjectNumber"
> colnames(dataSet2)[81] <- "ActivityNumber"
> colnames(dataSet2)[82] <- "ActivityDescription"
meltDataSet <- melt(dataSet2, id=c("SubjectNumber","ActivityNumber", "ActivityDescription"))
tidyData <- dcast(meltDataSet, SubjectNumber + ActivityDescription ~ variable, mean)
#This completes Step #5. All the remains is writing the tidy data set.
write.table(tidyData, "tidyData.txt", row.name=FALSE)

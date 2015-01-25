
# loading data
activity_labels <- read.table('activity_labels.txt',col.names=c("label","activity"))
features <- read.table('features.txt',col.names=c("label","feature"),colClasses=c("numeric","character"))

# loading train set
Y_train <- read.table('train//y_train.txt',col.names=c("label"))
X_train <- read.table('train//X_train.txt', colClasses="numeric")
subject_train <- read.table('train//subject_train.txt',col.names=c("subject"))

#loading test set
Y_test <- read.table('test//y_test.txt',col.names=c("label"))
X_test <- read.table('test//X_test.txt',colClasses="numeric")
subject_test <- read.table('test//subject_test.txt',col.names=c("subject"))

# binding data
X <- rbind(X_train,X_test)
Y <- rbind(Y_train,Y_test)
subject <- rbind(subject_train,subject_test)
dataset <- cbind(subject,Y,X)


# change some names 
features.names<-features[,2]
features.names<-gsub("std()","STD",features.names,fixed = T)
features.names<-gsub("mean()","MEAN",features.names,fixed = T)
colnames(dataset)<-c("subject","activity",features.names)

# Extracting the measurements of the mean and standard deviation
features.names.ch<-features.names[grepl("STD",features.names,fixed = T)|grepl("MEAN",features.names,fixed = T)]
dataset <- dataset[,c("subject","activity",features.names.ch)]

# change some names again
features.names.ch<-gsub("MEAN","Mean",features.names.ch,fixed=T)
features.names.ch<-gsub("STD","Std",features.names.ch,fixed=T)
features.names.ch<-gsub("-",".",features.names.ch,fixed=T)
colnames(dataset)<-c("subject","activity",features.names.ch)

#writing discriptive activity name
activitys<-activity_labels$activity
dataset<-mutate(dataset,activity=activitys[dataset$activity])

# grouping and evaluating mean
dataset.second<-ddply(dataset,.(activity,subject),.fun=colwise(mean))

#writing to file
write.table(dataset.second,row.name=FALSE,file = "tidy_dataset.txt")

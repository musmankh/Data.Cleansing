a <- read.table("data.cleansing/UCI HAR Dataset/test/X_test.txt", sep = "", colClasses = "numeric" ) 
## reading data for X_test

b <- read.table("data.cleansing/UCI HAR Dataset/test/y_test.txt")                                    
## reading data for y_test 

c <- read.table("data.cleansing/UCI HAR Dataset/test/subject_test.txt")                              
## reading data for subject_test 

d <- read.table("data.cleansing/UCI HAR Dataset/train/X_train.txt", sep ="", colClasses = "numeric") 
## reading data for X_train 

e <- read.table("data.cleansing/UCI HAR Dataset/train/y_train.txt")                                  
## reading data for y_train

f <- read.table("data.cleansing/UCI HAR Dataset/train/subject_train.txt")                            
## reading data for subject_train 

g <- rbind(a,d)                                                                                      
## Mergeing the training and the test sets to create one data set.

h <- read.table("data.cleansing/UCI HAR Dataset/features.txt")                                       
## reading data for features to rename the column in merged file

colnames(g) <- h[,2]                                                                                 
## Appropriately labels the data set with descriptive variable names.

sub <- cbind(g[,grep("mean()", names(g), fixed = TRUE)], g[,grep("std", names(g))], rbind(b,e), rbind(c,f))  
##Extracts only the measurements on the mean and standard deviation for each measurement. Also adding Subject and 

colnames(sub)[67:68] <- c("Activity", "Subject")
## Name the column Activity and Subject which is added in above step


act <- read.table("data.cleansing/UCI HAR Dataset/activity_labels.txt", col.names = c("V1", "Activity"))
## reading data for activity to use descriptive name in data set

sub <- merge(act, sub, by.x = "V1", by.y = "Activity")
## Changing descriptive activity names to name the activities in the data set

sub$V1 <- NULL
## removing the extra column created while merging

write.table(sub,"data_set1.txt", sep =";")
## storing tidy data_set1 in a txt file

xt <- aggregate(.~ Activity + Subject, data=sub, FUN = mean)
## independent tidy data set with the average of each variable for each activity and each subject

xt <- xt[order(xt$Activity, xt$Subject),]
## Sorting the data by Activity 

write.table(xt,"data_set2.txt", sep =";")
## storing tidy data_set2 in a txt file 

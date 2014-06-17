a <- read.table("data.cleansing/UCI HAR Dataset/test/X_test.txt", sep = "", colClasses = "numeric" )
b <- read.table("data.cleansing/UCI HAR Dataset/test/y_test.txt")
c <- read.table("data.cleansing/UCI HAR Dataset/test/subject_test.txt")
d <- read.table("data.cleansing/UCI HAR Dataset/train/X_train.txt", sep ="", colClasses = "numeric")
e <- read.table("data.cleansing/UCI HAR Dataset/train/y_train.txt")
f <- read.table("data.cleansing/UCI HAR Dataset/train/subject_train.txt")
g <- rbind(a,d)
h <- read.table("data.cleansing/UCI HAR Dataset/features.txt")
colnames(g) <- h[,2]
sub <- cbind(g[,grep("mean()", names(g), fixed = TRUE)], g[,grep("std", names(g))], rbind(b,e), rbind(c,f))
colnames(sub)[67:68] <- c("Activity", "Subject")
act <- read.table("data.cleansing/UCI HAR Dataset/activity_labels.txt", col.names = c("V1", "Activity"))
sub <- merge(act, sub, by.x = "V1", by.y = "Activity")
sub$V1 <- NULL
write.table(sub,"data_set1.txt", sep =";")
xt <- aggregate(.~ Activity + Subject, data=sub, FUN = mean)
xt <- xt[order(xt$Activity, xt$Subject),]
write.table(xt,"data_set2.txt", sep =";")



## run_analysis.R
## Script to run analysis for programming assignment for Getting and Cleaning
## Data course
library(dplyr)


#read in all of the data
X_test <- read.table("./data/test/X_test.txt")
Y_test <- read.table("./data/test/y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

X_train <- read.table("./data/train/X_train.txt")
Y_train <- read.table("./data/train/y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")


#join the test and training samples
X <- rbind(X_test, X_train)
Y <- rbind(Y_test, Y_train)
subject <- rbind(subject_test, subject_train)


#get the useful labels for the data frame from the text files
activity_labels <- read.table("./data/activity_labels.txt")
colnames(activity_labels) <- c("Number","Name")

feature_labels <-read.table("./data/features.txt")
feature_names<-make.names(feature_labels[,2], unique = TRUE)
colnames(X)<- feature_names


X_sub <- select(X,contains("mean", ignore.case = FALSE), contains("std"), -contains("meanFreq")
)

rm(X_test,Y_test,subject_test,X_train,Y_train,subject_train)

colnames(Y) <- "Activity"
colnames(subject) <- "Subject"

all_measurements <- cbind(subject, Y, X_sub)

all_measurements$Activity <- factor(all_measurements$Activity,
                                   activity_labels$Number,
                                   activity_labels$Name)

grouped <- group_by(all_measurements, Subject, Activity)

final_table <- summarise_each(grouped, funs(mean))


write.table(final_table, file = "tidy_data.txt",row.names = FALSE)

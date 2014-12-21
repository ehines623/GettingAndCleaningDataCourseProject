## run_analysis.R
## Script to run analysis for programming assignment for Getting and Cleaning
## Data course
library(dplyr)

X_test <- read.table("./data/test/X_test.txt")
Y_test <- read.table("./data/test/y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

X_train <- read.table("./data/train/X_train.txt")
Y_train <- read.table("./data/train/y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")


X <- rbind(X_test, X_train)
Y <- rbind(Y_test, Y_train)
subject <- rbind(subject_test, subject_train)

rm(X_test,Y_test,subject_test,X_train,Y_train,subject_train)

activity_labels <- read.table("./data/activity_labels.txt")
colnames(activity_labels) <- c("Number","Name")

feature_labels <-read.table("./data/features.txt")
colnames(X)<-feature_labels[,2]

#change this to a select
X <- X[,1:3]

all_measurements <- cbind(subject, Y, X)
colnames(all_measurements) <- c("Subject", "Activity", "X_mean","Y_mean","Z_mean")

#all_measurements$Activity <- factor(all_measurements$Activity,
#                                   activity_labels$Number,
#                                   activity_labels$Name)

grouped <- group_by(all_measurements, Subject, Activity)

blah <- summarise_each(grouped, mean())

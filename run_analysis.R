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


feature_labels <-read.table("./data/features.txt", stringsAsFactors= FALSE)
feature_names<-make.unique(feature_labels[,2])
feature_names <-gsub('\\()', '', feature_names)
feature_names <-gsub('-','.',feature_names)
colnames(X)<- feature_names

#only select the mean and std values (excluding meanFreq)
X_sub <- select(X,contains("mean", ignore.case = FALSE), contains("std")
                , -contains("meanFreq"))

# do some cleanup
rm(X_test,Y_test,subject_test,X_train,Y_train,subject_train, X)

#give some labels to what will be the first 2 columns
colnames(Y) <- "Activity"
colnames(subject) <- "Subject"

#add the subject and activity colums to the table
all_measurements <- cbind(subject, Y, X_sub)


#get the useful labels for the data frame from the text files
activity_labels <- read.table("./data/activity_labels.txt")
colnames(activity_labels) <- c("Number","Name")

#sub activity numbers with the descriptive names
all_measurements$Activity <- factor(all_measurements$Activity,
                                   activity_labels$Number,
                                   activity_labels$Name)

#group the measurements by subject and activity (30 subjects x 6 activities)
grouped <- group_by(all_measurements, Subject, Activity)


#take the average of all the measurement columns
final_table <- summarise_each(grouped, funs(mean))

#output the final table
write.table(final_table, file = "tidy_data.txt",row.names = FALSE)

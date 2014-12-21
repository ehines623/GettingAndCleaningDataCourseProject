## run_analysis.R
## Script to run analysis for programming assignment for Getting and Cleaning
## Data course


X_test <- read.table("./data/test/X_test.txt")
Y_test <- read.table("./data/test/y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

X_train <- read.table("./data/train/X_train.txt")
Y_train <- read.table("./data/train/y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")

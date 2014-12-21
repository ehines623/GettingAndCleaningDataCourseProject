#Getting and Cleaning Data Course Project for Peer Evaluation

This is my submission for peer evaluation for the course project for
the Coursera "Getting and Cleaning Data" Dec 2014 session.

##Included Files  
- README.md		This File
- run_analysis.R	The main script to produce the tidy data  
- CodeBook.md  		Descriptions of variable names in the tidy dataset  
- tidy_data.txt		The output of run_analysis.R
- data			Folder containing relevant data for the analysis, this is the unzipped, but otherwise unaltered files from the course assignment
	

#Flow of run_analysis.R script
-Load the "dplyr" library
-Load all the relevant data into data frames: this is 6 files X,y, and subject for both the test and training files
-Join the test and training files for each of the three "types" (X,Y, subject) using rbind
-Load the X column names using the "data/features.txt" file
--Because their is some duplication in names (though not in columns we will need later), make.unique is used to identify each column 
-Select only the columns from X that we care about -- mean(), std()
-Add labels to the subject and Y (activity) data frames
-Create one large data frame using cbind to add the subject and activity as columns to our selected subset of X
-Get the mapping of activity number to description from data/activity_labels.txt (i.e 1 == WALKING)
-Substitute these descriptive activity names for the numbers in the data frame
-Use the group_by function to slice the data frame by subject and activity (180, 30 subjects x 6 activities)
-Calculate the mean for each column for these groupings using summarise_each and save the result in a final table
-Write out the final table to "tidy_data.txt"








#Please See Codebook for description of variables
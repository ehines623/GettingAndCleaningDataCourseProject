#Code Book for "Getting and Cleaning Data Course Project"

##Quick Summary

This tidy data contains 180 observations of the 68 variables.  The 180
observations consist of 30 subjects each performing 6 different tasks
(see below).  The subject number and activity occupy the first two
columns.  The remaining 66 variables are the result of taking the mean
of each observational variable. (Ie either a mean of the mean, or the
mean of the std).  In general, variables beginning with "t" are time
measurements, while "f" are frequency signals that are the result of
Fast Fourier Transform

##Variable Summary

Column #  | Variable name             |  Description
:-------------|   :-------------            |  :-----------
1| Subject                   |  ID number of Subject performing activity
2| Activity                  |  One of 6 descriptive activities being performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3|tBodyAcc.mean.X            |  Mean of body acceleration in X direction
4|tBodyAcc.mean.Y 	     |  Mean of body acceleration in Y direction
5|tBodyAcc.mean.Z 	     |  Mean of body acceleration in Z direction
6|tGravityAcc.mean.X 	     |  Mean of gravity acceleration in X direction
7|tGravityAcc.mean.Y 	     |  Mean of gravity acceleration in Y direction
8|tGravityAcc.mean.Z 	     |  Mean of gravity acceleration in Z direction
9|tBodyAccJerk.mean.X        |  Mean of body jerk in X direction
10|tBodyAccJerk.mean.Y       |  Mean of body jerk in Y direction
11|tBodyAccJerk.mean.Z       |  Mean of body jerk in Z direction
12|tBodyGyro.mean.X 	     |  Mean of body angular acceleration in X direction
13|tBodyGyro.mean.Y 	     |  Mean of body angular acceleration in Y direction
14|tBodyGyro.mean.Z 	     |  Mean of body angular acceleration in Z direction
15|tBodyGyroJerk.mean.X      |  Mean of body angular jerk in X direction
16|tBodyGyroJerk.mean.Y      |  Mean of body angular jerk in Y direction
17|tBodyGyroJerk.mean.Z      |  Mean of body angular jerk in Z direction          
18|tBodyAccMag.mean 	     |  Mean of magnitude of body acceleration
19|tGravityAccMag.mean       |  Mean of magnitude of gravity acceleration
20|tBodyAccJerkMag.mean      |  Mean of magnitude of body jerk
21|tBodyGyroMag.mean 	     |  Mean of magnitude of body angular acceleration
22|tBodyGyroJerkMag.mean     |  Mean of magnitude of body angular jerk        
23|fBodyAcc.mean.X 	     |  Mean of FFT of body acceleration in X direction
24|fBodyAcc.mean.Y 	     |  Mean of FFT of body acceleration in Y direction
25|fBodyAcc.mean.Z 	     |  Mean of FFT of body acceleration in Z direction
26|fBodyAccJerk.mean.X       |  Mean of FFT of body jerk in X direction
27|fBodyAccJerk.mean.Y       |  Mean of FFT of body jerk in Y direction
28|fBodyAccJerk.mean.Z       |  Mean of FFT of body jerk in Z direction
29|fBodyGyro.mean.X 	     |  Mean of FFT of body angular acceleration in X direction
30|fBodyGyro.mean.Y 	     |  Mean of FFT of body angular acceleration in Y direction
31|fBodyGyro.mean.Z 	     |  Mean of FFT of body angular acceleration in Z direction
32|fBodyAccMag.mean 	     |  Mean of FFT of magnitude of body acceleration
33|fBodyBodyAccJerkMag.mean  |  Mean of FFT of magnitude of body jerk
34|fBodyBodyGyroMag.mean     |  Mean of FFT of magnitude of body angular acceleration
35|fBodyBodyGyroJerkMag.mean |  Mean of FFT of magnitude of body angular jerk           
36|tBodyAcc.std.X 	     |  Standard Deviation of body acceleration in X direction	    
37|tBodyAcc.std.Y 	     |  Standard Deviation of body acceleration in Y direction	    
38|tBodyAcc.std.Z 	     |  Standard Deviation of body acceleration in Z direction	    
39|tGravityAcc.std.X 	     |  Standard Deviation of gravity acceleration in X direction	    
40|tGravityAcc.std.Y 	     |  Standard Deviation of gravity acceleration in Y direction	    
41|tGravityAcc.std.Z 	     |  Standard Deviation of gravity acceleration in Z direction	    
42|tBodyAccJerk.std.X        |  Standard Deviation of body jerk in X direction		    
43|tBodyAccJerk.std.Y        |  Standard Deviation of body jerk in Y direction		    
44|tBodyAccJerk.std.Z        |  Standard Deviation of body jerk in Z direction		    
45|tBodyGyro.std.X 	     |  Standard Deviation of body angular acceleration in X direction  
46|tBodyGyro.std.Y 	     |  Standard Deviation of body angular acceleration in Y direction  
47|tBodyGyro.std.Z 	     |  Standard Deviation of body angular acceleration in Z direction  
48|tBodyGyroJerk.std.X       |  Standard Deviation of body angular jerk in X direction	    
49|tBodyGyroJerk.std.Y       |  Standard Deviation of body angular jerk in Y direction	    
50|tBodyGyroJerk.std.Z       |  Standard Deviation of body angular jerk in Z direction          
51|tBodyAccMag.std 	     |  Standard Deviation of magnitude of body acceleration	
52|tGravityAccMag.std        |  Standard Deviation of magnitude of gravity acceleration	
53|tBodyAccJerkMag.std       |  Standard Deviation of magnitude of body jerk		
54|tBodyGyroMag.std 	     |  Standard Deviation of magnitude of body angular acceleration
55|tBodyGyroJerkMag.std      |  Standard Deviation of magnitude of body angular jerk        
56|fBodyAcc.std.X 	     |  Standard Deviation of FFT of body acceleration in X direction	  
57|fBodyAcc.std.Y 	     |  Standard Deviation of FFT of body acceleration in Y direction	  
58|fBodyAcc.std.Z 	     |  Standard Deviation of FFT of body acceleration in Z direction	  
59|fBodyAccJerk.std.X        |  Standard Deviation of FFT of body jerk in X direction		  
60|fBodyAccJerk.std.Y        |  Standard Deviation of FFT of body jerk in Y direction		  
61|fBodyAccJerk.std.Z        |  Standard Deviation of FFT of body jerk in Z direction		  
62|fBodyGyro.std.X 	     |  Standard Deviation of FFT of body angular acceleration in X direction 
63|fBodyGyro.std.Y 	     |  Standard Deviation of FFT of body angular acceleration in Y direction 
64|fBodyGyro.std.Z 	     |  Standard Deviation of FFT of body angular acceleration in Z direction 
65|fBodyAccMag.std 	     |  Standard Deviation of FFT of magnitude of body acceleration		  
66|fBodyBodyAccJerkMag.std   |  Standard Deviation of FFT of magnitude of body jerk			  
67|fBodyBodyGyroMag.std      |  Standard Deviation of FFT of magnitude of body angular acceleration	  
68|fBodyBodyGyroJerkMag.std  |  Standard Deviation of FFT of magnitude of body angular jerk           
# Produce Codebook for 'run_analysis.R'
library(knitr)
knit2html("codebook.Rmd")

## Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate that I have the ability to collect, work with, and clean a data set. We are assigned a 'raw' dataset from UCI Human Activity Recognition (HAR) Using Smartphones. Their website is 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The link immedately below leads to the 'raw' data for the project (taken from UCI HAR) :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Our instructor gave us the assignment to clean the dataset. The characteristics of the 'cleaned' dataset are listed as folloews:

### The structure of the 'cleaned' (tidy data) 'FinalProjData' dataset: 
General structure: the number of observations and the number of variables in the cleaned dataset: It is a 'data.frame' with	180 observations (rows) of  68 variables (columns). More detail is provided below.
 
### The Variable Names of the 'cleaned', tidy dataset are:

1. subject_ID
2. activity
3. timeBodyAccelerometer-mean()-X
4. timeBodyAccelerometer-mean()-Y
5. timeBodyAccelerometer-mean()-Z
6. timeBodyAccelerometer-std()-X
7. timeBodyAccelerometer-std()-Y
8. timeBodyAccelerometer-std()-Z
9. timeGravityAccelerometer-mean()-X
10. timeGravityAccelerometer-mean()-Y
11. timeGravityAccelerometer-mean()-Z
12. timeGravityAccelerometer-std()-X
13. timeGravityAccelerometer-std()-Y
14. timeGravityAccelerometer-std()-Z
15. timeBodyAccelerometerJerk-mean()-X
16. timeBodyAccelerometerJerk-mean()-Y
17. timeBodyAccelerometerJerk-mean()-Z
18. timeBodyAccelerometerJerk-std()-X
19. timeBodyAccelerometerJerk-std()-Y
20. timeBodyAccelerometerJerk-std()-Z
21. timeBodyGyroscope-mean()-X
22. timeBodyGyroscope-mean()-Y
23. timeBodyGyroscope-mean()-Z
24. timeBodyGyroscope-std()-X
25. timeBodyGyroscope-std()-Y
26. timeBodyGyroscope-std()-Z
27. timeBodyGyroscopeJerk-mean()-X
28. timeBodyGyroscopeJerk-mean()-Y
29. timeBodyGyroscopeJerk-mean()-Z
30. timeBodyGyroscopeJerk-std()-X
31. timeBodyGyroscopeJerk-std()-Y
32. timeBodyGyroscopeJerk-std()-Z
33. timeBodyAccelerometerMagnitude-mean()   
34. timeBodyAccelerometerMagnitude-std()
35. timeGravityAccelerometerMagnitude-mean()
36. timeGravityAccelerometerMagnitude-std()
37. timeBodyAccelerometerJerkMagnitude-mean()
38. timeBodyAccelerometerJerkMagnitude-std()
39. timeBodyGyroscopeMagnitude-mean()
40. timeBodyGyroscopeMagnitude-std()
41. timeBodyGyroscopeJerkMagnitude-mean()
42. timeBodyGyroscopeJerkMagnitude-std()
43. frequencyBodyAccelerometer-mean()-X
44. frequencyBodyAccelerometer-mean()-Y
45. frequencyBodyAccelerometer-mean()-Z
46. frequencyBodyAccelerometer-std()-X
47. frequencyBodyAccelerometer-std()-Y
48. frequencyBodyAccelerometer-std()-Z
49. frequencyBodyAccelerometerJerk-mean()-X
50. frequencyBodyAccelerometerJerk-mean()-Y
51. frequencyBodyAccelerometerJerk-mean()-Z
52. frequencyBodyAccelerometerJerk-std()-X
53. frequencyBodyAccelerometerJerk-std()-Y
54. frequencyBodyAccelerometerJerk-std()-Z
55. frequencyBodyGyroscope-mean()-X
56. frequencyBodyGyroscope-mean()-Y
57. frequencyBodyGyroscope-mean()-Z
58. frequencyBodyGyroscope-std()-X
59. frequencyBodyGyroscope-std()-Y
60. frequencyBodyGyroscope-std()-Z
61. frequencyBodyAccelerometerMagnitude-mean()
62. frequencyBodyAccelerometerMagnitude-std()
63. frequencyBodyAccelerometerJerkMagnitude-mean()
64. frequencyBodyAccelerometerJerkMagnitude-std()
65. frequencyBodyGyroscopeMagnitude-mean()
66. frequencyBodyGyroscopeMagnitude-std()
67. frequencyBodyGyroscopeJerkMagnitude-mean()
68. frequencyBodyGyroscopeJerkMagnitude-std()


### Variable Descriptions of the 'cleaned' tidy dataset are:

1. subject_ID: Identifier of the subject who performed the activity
2. activity: The type of activity performed by the subject
3. timeBodyAccelerometer-mean()-X: Mean value of time domain body accelerometer signal in the X direction
4. timeBodyAccelerometer-mean()-Y: Mean value of time domain body accelerometer signal in the Y direction
5. timeBodyAccelerometer-mean()-Z: Mean value of time domain body accelerometer signal in the Z direction
6. timeBodyAccelerometer-std()-X: Standard deviation of time domain body accelerometer signal in the X direction
7. timeBodyAccelerometer-std()-Y: Standard deviation of time domain body accelerometer signal in the Y direction
8. timeBodyAccelerometer-std()-Z: Standard deviation of time domain body accelerometer signal in the Z direction
9. timeGravityAccelerometer-mean()-X: Mean value of time domain gravity accelerometer signal in the X direction
10. timeGravityAccelerometer-mean()-Y: Mean value of time domain gravity accelerometer signal in the Y direction
11. timeGravityAccelerometer-mean()-Z: Mean value of time domain gravity accelerometer signal in the Z direction
12. timeGravityAccelerometer-std()-X: Standard deviation of time domain gravity accelerometer signal in the X direction
13. timeGravityAccelerometer-std()-Y: Standard deviation of time domain gravity accelerometer signal in the Y direction
14. timeGravityAccelerometer-std()-Z: Standard deviation of time domain gravity accelerometer signal in the Z direction
15. timeBodyAccelerometerJerk-mean()-X : Mean value of time domain body accelerometer Jerk signal in the X direction
16. timeBodyAccelerometerJerk-mean()-Y : Mean value of time domain body accelerometer Jerk signal in the Y direction
17. timeBodyAccelerometerJerk-mean()-Z : Mean value of time domain body accelerometer Jerk signal in the Z direction
18. timeBodyAccelerometerJerk-std()-X: Standard deviation of time domain gravity accelerometer Jerk signal in the X direction
19. timeBodyAccelerometerJerk-std()-Y: Standard deviation of time domain gravity accelerometer Jerk signal in the Y direction
20. timeBodyAccelerometerJerk-std()-Z: Standard deviation of time domain gravity accelerometer Jerk signal in the Z direction
21. timeBodyGyroscope-mean()-X: Mean value of time domain body Gyroscope signal in the X direction
22. timeBodyGyroscope-mean()-Y: Mean value of time domain body Gyroscope signal in the Y direction
23. timeBodyGyroscope-mean()-Z: Mean value of time domain body Gyroscope signal in the Z direction
24. timeBodyGyroscope-std()-X: Standard deviation of time domain body Gyroscope signal in the X direction
25. timeBodyGyroscope-std()-Y: Standard deviation of time domain body Gyroscope signal in the Y direction
26. timeBodyGyroscope-std()-Z: Standard deviation of time domain body Gyroscope signal in the Z direction
27. timeBodyGyroscopeJerk-mean()-X: Mean value of time domain body Gyroscope Jerk signal in the X direction
28. timeBodyGyroscopeJerk-mean()-Y: Mean value of time domain body Gyroscope Jerk signal in the Y direction 
29. timeBodyGyroscopeJerk-mean()-Z: Mean value of time domain body Gyroscope Jerk signal in the Z direction
30. timeBodyGyroscopeJerk-std()-X: Standard deviation value of time domain body Gyroscope Jerk signal in the X direction
31. timeBodyGyroscopeJerk-std()-Y: Standard deviation value of time domain body Gyroscope Jerk signal in the Y direction
32. timeBodyGyroscopeJerk-std()-Z: Standard deviation value of time domain body Gyroscope Jerk signal in the Z direction
33. timeBodyAccelerometerMagnitude-mean(): Mean value of time domain body accelerometer magnitude
34. timeBodyAccelerometerMagnitude-std(): Standard deviation of time domain body accelerometer magnitude
35. timeGravityAccelerometerMagnitude-mean(): Mean value of time domain gravity accelerometer magnitude
36. timeGravityAccelerometerMagnitude-std(): Standard deviation of time domain gravity accelerometer magnitude
37. timeBodyAccelerometerJerkMagnitude-mean(): Mean value of time domain body accelerometer jerk magnitude
38. timeBodyAccelerometerJerkMagnitude-std(): Standard deviation of time domain body accelerometer jerk magnitude
39. timeBodyGyroscopeMagnitude-mean(): Mean value of time domain body gyroscope magnitude
40. timeBodyGyroscopeMagnitude-std(): Standard deviation of time domain body gyroscope magnitude
41. timeBodyGyroscopeJerkMagnitude-mean(): Mean value of time domain body gyroscope jerk magnitude
42. timeBodyGyroscopeJerkMagnitude-std(): Standard deviation of time domain body gyroscope jerk magnitude
43. frequencyBodyAccelerometer-mean()-X: Mean value of frequency domain body accelerometer signal in the X direction
44. frequencyBodyAccelerometer-mean()-Y: Mean value of frequency domain body accelerometer signal in the Y direction
45. frequencyBodyAccelerometer-mean()-Z: Mean value of frequency domain body accelerometer signal in the Z direction
46. frequencyBodyAccelerometer-std()-X: Standard deviation of frequency domain body accelerometer signal in the X direction
47. frequencyBodyAccelerometer-std()-Y: Standard deviation of frequency domain body accelerometer signal in the Y direction
48. frequencyBodyAccelerometer-std()-Z: Standard deviation of frequency domain body accelerometer signal in the Z direction
49. frequencyBodyAccelerometerJerk-mean()-X: Mean value of frequency domain body accelerometer jerk signal in the X direction
50. frequencyBodyAccelerometerJerk-mean()-Y: Mean value of frequency domain body accelerometer jerk signal in the Y direction
51. frequencyBodyAccelerometerJerk-mean()-Z: Mean value of frequency domain body accelerometer jerk signal in the Z direction
52. frequencyBodyAccelerometerJerk-std()-X: Standard deviation of frequency domain body accelerometer jerk signal in the X direction
53. frequencyBodyAccelerometerJerk-std()-Y: Standard deviation of frequency domain body accelerometer jerk signal in the Y direction
54. frequencyBodyAccelerometerJerk-std()-Z: Standard deviation of frequency domain body accelerometer jerk signal in the Z direction
55. frequencyBodyGyroscope-mean()-X: Mean value of frequency domain body gyroscope signal in the X direction
56. frequencyBodyGyroscope-mean()-Y: Mean value of frequency domain body gyroscope signal in the Y direction
57. frequencyBodyGyroscope-mean()-Z: Mean value of frequency domain body gyroscope signal in the Z direction
58. frequencyBodyGyroscope-std()-X: Standard deviation of frequency domain body gyroscope signal in the X direction
59. frequencyBodyGyroscope-std()-Y: Standard deviation of frequency domain body gyroscope signal in the Y direction
60. frequencyBodyGyroscope-std()-Z: Standard deviation of frequency domain body gyroscope signal in the Z direction
61. frequencyBodyAccelerometerMagnitude-mean(): Mean value of frequency domain body accelerometer magnitude
62. frequencyBodyAccelerometerMagnitude-std(): Standard deviation of frequency domain body accelerometer magnitude
63. frequencyBodyAccelerometerJerkMagnitude-mean(): Mean value of frequency domain body accelerometer jerk magnitude
64. frequencyBodyAccelerometerJerkMagnitude-std(): Standard deviation of frequency domain body accelerometer jerk magnitude
65. frequencyBodyGyroscopeMagnitude-mean(): Mean value of frequency domain body gyroscope magnitude
66. frequencyBodyGyroscopeMagnitude-std(): Standard deviation of frequency domain body gyroscope magnitude
67. frequencyBodyGyroscopeJerkMagnitude-mean(): Mean value of frequency domain body gyroscope jerk magnitude
68. frequencyBodyGyroscopeJerkMagnitude-std(): Standard deviation of frequency domain body gyroscope jerk magnitude

### Data Types of the 'cleaned' tidy dataset are: 

1. subject_ID - integer (1 - 30)
2. activity - factor with 6 levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. 3. thru 68. all time domain and frequency domain measurements  - numeric

### Units (of each measurement) of the 'cleaned' tidy dataset are:

In general, accelerometer measurements are commonly reported in units of gravity (g) or meters per second squared (m/s²). Gyroscope measurements are typically expressed in degrees per second (°/s) or radians per second (rad/s).

It should be noted, however, that in this dataset: 
======
- Features (measurements) are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this HAR dataset contact: activityrecognition@smartlab.ws

### Transformations or Calculations done to obtain the 'cleaned' tidy dataset : 

The variables that are derived from others or involve specific transformations or calculations; details;

In developing the 'FinalProjData' tidy dataset, we were assigned the goal to prepare tidy data that can be used for later analysis. The original dataset we were assigned to use is the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

We transformed the original HAR dataset as follows:

   1. Merged the training and the test sets to create one data set.
      (below gives information about how the merging was done; we merged the original training (X_train, y_train) sets and the test (X_test, y_test) sets to create one 
       dataframe).
       We used the 'rbind' function to combine the individual dataframes by rows, e.g., for the HAR X_train and y_test 'features' data:
       "Featur_Dat <- rbind(Featur_Train, Featur_Test)".
       
       We merged columns to get the data frame data for all data ('subject', 'activities', 'features').
       We used the 'cbind' function to combine the individual dataframes by columns, e.g., 
       for the "Combin_Dat <- cbind(Subject_Dat, Activ_Dat)". Then formed a data frame 'InterimData' :
       "InterimData <- cbind(Combin_Dat, Featur_Dat)".
       
       Note: at this point we had a data frame 'InterimData' which is an accumulation of all of the original HAR measurements as well as their calculated 'mean values' and 
       'standard deviation values'.

   2. Then we extracted only the values on the mean and standard deviation for each measurement.
      For the extraction of mean and standard deviation measurements, we 'subset' names of Features by measurements on the mean and standard deviation i.e., take the Names 
      of Features with “mean()” or “std()”. 
      
      Note: 1st we used the 'grep' function. The 'grep' function is used for pattern matching and
      searching within character strings or vectors. It returns the indices or elements that match a specified
      pattern; e.g.' "MyData_Featur_Nam <- colnam_Featur_Dat[grep("mean\\(\\)|std\\(\\)", colnam_Featur_Dat)]".
      
       Then, In doing the above, in the 'MyData_featur_Nam' feature names, we are left with only those measurement names which are described by both their mean AND 
       standard deviation _which, I understand, is what we were asked to do in the directions for this assignment._

       NOW we are ready to 'subset' the dataframe InterimData by seleted names of Features;
       "MySelected_Nam <- c(as.character(MyData_Featur_Nam), "subject_ID", "activity" )"; 
       then 'subset InterimData' as "InterimData <- subset(InterimData, select = MySelected_Nam)".
       
       By veiwing the subsetted 'InterimData data frame', we see we are left with only those features which give the 'mean()' and 'std()' of the variables. 

   3. Gave descriptive activity names to name the activities in the data set; 
      To elaborate on the specific mapping of original activity labels to the descriptive names used in the cleaned dataset:  

      To begin, we needed to 'read' descriptive activity names from “activity_labels.txt” USING
      "activ_Labels <- read.table(file.path(path_HAR, "activity_labels.txt"),header = FALSE)".
      
      Then we: 1) created the mapping between activity codes and names using 'activ_Labels'; i.e.,
      "activity_mapping <- data.frame(code = 1:6, name = activ_Labels$V2)" and
       2) factorized the 'activity' variable with descriptive names; i.e., 
           "InterimData$activity <- factor(InterimData$activity, levels = activity_mapping$code, labels = activity_mapping$name)"

          Then checked to see the proper 'activity labels';
            "head(InterimData$activity, 30)"                       
            ....and we see proper labels.....

   4.  Now, label the data set with 'descriptive' variable names.
       Previously, the variables 'activity' and 'subject' and names of the activities have been labelled using descriptive names.

       So, also, the names of the 'Features' were labeled using descriptive variable names.
         1st we looked at the 'InterimData Features' again to see what we needed to change: 
         a. prefix t is replaced by time
         b. Acc is replaced by Accelerometer
         c. Gyro is replaced by Gyroscope
         d. prefix f is replaced by frequency
         e. Mag is replaced by Magnitude
         f. BodyBody is replaced by Body
            
            We used 'global substitution' i.e., the 'gsub' function to replace abbreviations with the full 
            word in the InterimData data frame variable names: 
              e.g., we used "names(InterimData) <- gsub("^t", "time", names(InterimData))".
              
   5. From the data set in step 4 (above), we created a second, independent tidy data set with the 'average' of each variable for each activity and each subject: 
      
      I interpret this to mean, that we are taking the 'mean' of the Means and the 'mean' of the Standard Deviations; 
      So below, a second, independent tidy data set is created:

      In the below, 'FinalData_1' performs aggregation on the 'InterimData' dataframe using the 'aggregate' function from the base R package.

      The 'aggregate' function is used to aggregate data based on the grouping variables 'subject_ID + activity': 
      This indicates that the aggregation should be performed based on the variables 'subject_ID' and 'activity'. It groups the data by these variables.
      
      Furthermore, in the below, the 'mean' function is specified as the aggregation function. It calculates the mean value for each variable within each combination of 
      'subject_ID' and 'activity';
      'aggregate' is from dplyr; "library(dplyr)"; 
      we form data frame "FinalData_1 <- aggregate(. ~subject_ID + activity, InterimData, mean)".
      
      We then 'ordered' Final Data_1 to form data frame; 
     "FinalData <- FinalData_1[order(FinalData_1*dollar sign*subject_ID, FinalData_1*dollar sign*activity), ]"
     
      The 'order' function is used to sort vectors or data frames based on one or more variables. It returns a permutation that rearranges the elements of the input object 
      in ascending order by default, (or based on a specified order). We see that we have the data sorted by each subject (subject_ID) in ascending order. 
      
      Finally, we stored 'FinalData' in my directory (as tidy data frame 'FinalProjData');
      
      "write.table(FinalData, "./data/FinalProjData.txt", row.name = FALSE)"
         
**_FinalProjData_** is a 'data.frame' with 180 observations (rows) of  68 variables (columns). It is sorted by each subject's ID by each activity they performed (6 level factor ; WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Each row represents the mean (or average) of the 'means' and 'standard deviations' of time domain and frequency domain accelerometer and gryroscope measurements for each activity for each participant (subject).
 
     FinalProjData is a 'data.frame' with 180 observations (rows) of  68 variables (columns). A copy of 'FinalProjData' is included in this repository.

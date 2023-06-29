####               code script for run_analysis.R
##  Get the data
##  1.Download the file and put the file in the data folder

if(!file.exists("./data")){dir.create("./data")}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/HAR_Dataset.zip", method = "curl")


##   2.Unzip the file
unzip(zipfile="./data/HAR_Dataset.zip",exdir="./data")

##   3.unzipped files are in the folder 'UCI HAR Dataset'. Get the list of the files
path_HAR <- file.path("./data" , "UCI HAR Dataset")
files_HAR <- list.files(path_HAR, recursive=TRUE)
files_HAR

##  See the README.txt file for the detailed information on the dataset. 
##  For the purposes of this project, the files in the Inertial Signals 
##  folders are not used. The files that will be used to load data are 
##   listed as follows:
  
 # test/subject_test.txt
 # test/X_test.txt
 # test/y_test.txt
 # train/subject_train.txt
 # train/X_train.txt
 # train/y_train.txt

##  Values of Varible Activity consist of data from “Y_train.txt” and “Y_test.txt”
##  values of Varible Subject consist of data from “subject_train.txt” and 
##   subject_test.txt"
##  Values of Varibles Features consist of data from “X_train.txt” and “X_test.txt”
##   Names of Varibles Features come from “features.txt”
##   levels of Varible Activity come from “activity_labels.txt”

##   So we will use Activity, Subject and Features as part of descriptive variable 
##   names for data in data frame.

##  2.Read data from the files into the variable 

##  Read the Activity files

Activ_Test  <- read.table(file.path(path_HAR, "test" , "Y_test.txt" ),header = FALSE)
Activ_Train <- read.table(file.path(path_HAR, "train", "Y_train.txt"),header = FALSE)

##  Read the Subject files

Subject_Test  <- read.table(file.path(path_HAR, "test" , "subject_test.txt"),header = FALSE)
Subject_Train <- read.table(file.path(path_HAR, "train", "subject_train.txt"),header = FALSE)

##   Read Features files

Featur_Test  <- read.table(file.path(path_HAR, "test" , "X_test.txt" ),header = FALSE)
Featur_Train <- read.table(file.path(path_HAR, "train", "X_train.txt"),header = FALSE)

##  Look at each 'Test case'
dim(Activ_Test)
str(Activ_Test)  ## dataframe with one 'int' column; 2947 'obs.'

dim(Subject_Test)
str(Subject_Test) ## dataframe with one 'int' column; 2947 'obs.'

dim(Featur_Test)
str(Featur_Test)  ## dataframe with 561 'num' columns; 2947 'obs.'

##  Look at each 'Train case'
dim(Activ_Train)
str(Activ_Train)  ## dataframe with one 'int' column; 7352 'obs.'

dim(Subject_Train)
str(Subject_Train) ## dataframe with one 'int' column; 7352 'obs.'

dim(Featur_Train)
str(Featur_Train)  ## dataframe with 561 'num' columns; 7352 .obs.'

## Merge the training and the test sets to create one dataframe
##   1.Combine the individual dataframes by rows

Subject_Dat <- rbind(Subject_Train, Subject_Test)
Activ_Dat <- rbind(Activ_Train, Activ_Test)
Featur_Dat <- rbind(Featur_Train, Featur_Test)

##    2.set names to variables (columns)

names(Subject_Dat) <- c("subject_ID")
names(Activ_Dat) <- c("activity")
#names(Activ_Dat)
#names(Subject_Dat)

Featur_Dat_Names <- read.table(file.path(path_HAR, "features.txt"), head = FALSE)

#####  In the following statement, the statement 'names(Featur_Dat) <- Featur_Dat_Names$V2' 
##     is updating the names of the Featur_Dat object with the values from the V2 column 
##     of the same object.

names(Featur_Dat) <- Featur_Dat_Names$V2
names(Featur_Dat)

colnam_Featur_Dat <- Featur_Dat_Names$V2
colnam_Featur_Dat


#  3.Merge columns to get the data frame Data for all data

Combin_Dat <- cbind(Subject_Dat, Activ_Dat)
#MyData1 <- cbind(Featur_Dat, Combin_Dat)
InterimData <- cbind(Combin_Dat, Featur_Dat)
dim(InterimData)
str(InterimData)

##  Extract only the measurements on the mean and standard deviation 
##  for each measured variable
##  So, 'Subset' Name of Features by measurements on the mean and
##  standard deviation i.e., take the Names of Features with “mean()” 
##   or “std()”

##  Note: We will use the 'grep' function. The 'grep' function is 
##  used for pattern matching and searching within character strings or vectors. 
##  It returns the indices or elements that match a specified pattern.

MyData_Featur_Nam <- colnam_Featur_Dat[grep("mean\\(\\)|std\\(\\)", colnam_Featur_Dat)]
MyData_Featur_Nam

## In doing the above, in the 'MyData_featur_Nam' feature names, we are left with 
##  only those measurement names which are described by both their mean 
##   AND standard deviation
##   which, I understand, is what we were asked to do in the directions for this assignment.

##  NOW, 'subset' the dataframe MyData by seleted names of Features

MySelected_Nam <- c(as.character(MyData_Featur_Nam), "subject_ID", "activity" )
MySelected_Nam

InterimData <- subset(InterimData, select = MySelected_Nam)
InterimData
View(InterimData)     #### 'View' shows everything is OK....

##  ALSO, let's check the structures of the InterimData dataframe
str(InterimData)
##      ############  we have '10299 obs.' w '68 variables' -- good...

##  Now use descriptive activity names to name the activities in the data set

##  To begin, we need to 'read' descriptive activity names from “activity_labels.txt”

activ_Labels <- read.table(file.path(path_HAR, "activity_labels.txt"),header = FALSE)
head(activ_Labels)

############################### now proceed:
##     Step 1: Create the mapping between activity codes and names using 'activ_Labels';

activity_mapping <- data.frame(
  code = 1:6,  # Numeric activity codes
  name = activ_Labels$V2  # Descriptive activity names from 'activ_Labels'
)

head(activity_mapping)

##     Step 2: Factorize the 'activity' variable with descriptive names;
InterimData$activity <- factor(InterimData$activity, levels = activity_mapping$code, labels = activity_mapping$name)

          ##check to see the proper 'activity labels';
head(InterimData$activity,30)    ## and we see proper labels....

##  Now, label the data set with 'descriptive' variable names.
##  Previously, the variables 'activity' and 'subject' and names of the activities have been 
##  labelled using descriptive names.

##   So below, names of the 'Features' will labelled using 
##    descriptive variable names.
##      Let's 1st look at the 'InterimData Features' again to see what
##       we need to change:

names(InterimData)

##    1) prefix t is replaced by time
##    2) Acc is replaced by Accelerometer
##    3) Gyro is replaced by Gyroscope
##    4) prefix f is replaced by frequency
##    5) Mag is replaced by Magnitude
##    6) BodyBody is replaced by Body

names(InterimData) <- gsub("^t", "time", names(InterimData))
names(InterimData) <- gsub("^f", "frequency", names(InterimData))
names(InterimData)
names(InterimData) <- gsub("Acc", "Accelerometer", names(InterimData))
names(InterimData) <- gsub("Gyro", "Gyroscope", names(InterimData))
names(InterimData)
names(InterimData) <- gsub("Mag", "Magnitude", names(InterimData))
names(InterimData) <- gsub("BodyBody", "Body", names(InterimData))

##   Final check of descriptive names;

dim(InterimData)
names(InterimData)
View(InterimData)

### We see that all of the 'variable' names ('column' names) are
##   indeed descriptive AND that each of the variables is well-
##    grouped by its 'mean' and 'standard deviation'....

##  Now we need to create a second,independent tidy data set, i.e.,
##  from the data set in step 4, create a second, independent tidy data set 
##   with the average of each variable for each activity and each subject.

##  I interpret this to mean, that we are taking the 'mean' of the Means and
##    the 'mean' of the Standard Deviations --
##   So below, a second, independent tidy data set is created::

##  In the below,  'FinalData_1' performs aggregation on the 'InterimData' 
##   dataframe using the 'aggregate' function from the base R package.

##  In the below, the 'aggregate' function is used to aggregate data based on the
####  (one or more) grouping variables subject_ID + activity: This indicates 
##   that the aggregation should be performed based on the variables 'subject_ID' 
##   and 'activity'. It groups the data by these variables.

##  In the below, the 'mean' function is specified as the aggregation function. 
##  It calculates the mean value for each variable within each combination 
##   of 'subject_ID' and 'activity'.

library(dplyr);
FinalData_1 <- aggregate(. ~subject_ID + activity, InterimData, mean)


## So in 'FinalData_1';
dim(FinalData_1)
head(FinalData_1)
View(FinalData_1)

FinalData <- FinalData_1[order(FinalData_1$subject_ID, FinalData_1$activity), ]
dim(FinalData)
head(FinalData)
View(FinalData)
    ####  we see that we have the data is sorted by each subject (subject_ID)
     ##    in ascending order

## Finally, let's store 'FinalData' in my directory::
write.table(FinalData, "./data/FinalProjData.txt", row.name = FALSE)

## end of script for 'run_analysis.R'


str(FinalData)

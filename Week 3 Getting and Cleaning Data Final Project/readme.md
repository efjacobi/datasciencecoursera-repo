## README for 'run_analysis.R'

This repository contains an 'R' script file (`run_analysis.R`) that performs various data processing tasks. The script aims to download and process the Human Activity Recognition (HAR) dataset. The following sections provide an overview of the steps involved and the purpose of each section.

### Getting Started

To run the script, follow the steps outlined below:

1. Download the HAR dataset file and place it in the directory `data` folder.
2. Unzip the downloaded file to extract the dataset.
3. Run the script (`run_analysis.R`) in your preferred 'R' environment.

### Data Processing Steps

### Step 1: Get the Data

The script begins by downloading the HAR dataset file from a specific URL and saving it to the RStudio directory `data` folder. The downloaded file is then extracted.

### Step 2: Read Data from Files

The script reads various files from the dataset, including the activity files, subject files, and features files. Each file is loaded into a separate dataframe for further processing. The dimensions and structure of the dataframes are displayed for verification.

### Step 3: Merge Dataframes

The script merges the training and test sets by combining the individual dataframes. The resulting dataframe includes subject, activity, and features data. Descriptive variable names are assigned to the merged dataframe.

### Step 4: Extract Mean and Standard Deviation Measurements

In this step, the script extracts only the measurements on the mean and standard deviation for each variable. The subset of features with names containing "mean()" or "std()" is selected, resulting in a modified dataframe.

### Step 5: Use Descriptive Activity Names

The script reads descriptive activity names from a file ('activity_labels.txt') and maps them to the corresponding activity codes in the dataframe. This step ensures that the activities in the dataset have descriptive names.

### Step 6: Label Variables with Descriptive Names

Variable names in the dataframe are modified to be more descriptive. The script replaces specific prefixes and abbreviations with meaningful terms. A final check is performed to ensure all variable names are descriptive and well-grouped.

### Step 7: Create Tidy Data Set

The script aggregates the modified dataframe to create a second, independent tidy data set. The aggregation is performed based on the grouping variables `subject_ID` and `activity`, calculating the mean value for each variable within each combination. The resulting tidy data set is then sorted by `subject_ID` and `activity`.

### Step 8: Store the Tidy Data Set

The final tidy data set is saved as a text file named `FinalProjData.txt` in the `data` folder.

## Conclusion

The 'run_analysis.R' script provides a comprehensive workflow to download, process, and aggregate the HAR dataset, resulting in a tidy data set. It follows a series of steps, from data acquisition to generating the final tidy dataset.

Please note that this README file provides an overview of the script's functionality. For detailed information and a step-by-step guide, refer to the comments within the 'run_analysis.R' script itself.

For any further questions or inquiries, feel free to contact the repository owner 'efjacobi'.


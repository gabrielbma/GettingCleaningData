GettingCleaningData
===================

##About This Repository
This repository was created for submission of my Course Project for the Getting &amp; Cleaning Data course hosted on Coursera.

There are 5 files in this repository:  
**1.** ARyanSMSMergedSamsungData.txt - this is the merged data set that is generated from my R Scrpt, prior to averages being taken  
**2.** ARyanSMSTidySamsungData.txt - this is the tidy data set that is generated from my R Script, after the averages have been calculated, by student by activity for each variable. This is the data set that has been submitted through Coursera  
**3.** CodeBook.md - my Code Book, which describes each variable, the data, and the transformation process from the raw data to my tidy data  
**4.** README.md - this file, which provides an explanation of the GettingCleaningData repo and its files, as well as the information required to run my R Script to tidy up the raw Samsung data  
**5.** run_analysis.R - my R Script that can be used to prouce ARyanSMSTidySamsungData.txt from the raw Samsung data  

##Running My Script
Before running my R Script, the raw Samsung data must be in your working directory, in the same directory tree as it came zipped in (i.e. UCI HAR Dataset\\etc...).  
All data transformations required to create a tidy data set from the raw Samsung data can be completed by sourcing only the run_analysis R Script:  
```S
> source("run_analysis.R") #This assumes the file is saved in your working directory
```
Once sourced, run the following command to transform the data:
```S
> tidySamsungData()
```
This function will perform the following tasks:  
+ Verify the existence of all data files in the original raw data set
+ Combine the subject ID, the activity ID, and the _mean()_ and _std()_ columns from the X data files into a single table
+ Name the columns with something more understandable than the given names
+ Replace activity IDs with activity names
+ Write the new merged data table to a file called ARyanSMSMergedSamsungData.txt
+ Create a new summary table containing subject IDs, activity names, and the mean of the data from the merged table that match the subject and activity for each column
+ Write the new summary data table to a file called ARyanSMSTidySamsungData.txt

##My Tidy Data Set
###How To Read My Data Set Into R
My tidy data set can be read into R by typing the following command (assuming the text file is in your working directory):  
```S
> read.table("ARyanSMSTidySamsungData.txt", header = TRUE)
```
It is important to make sure the header switch is set to TRUE, otherwise the header row will be read in as a data row, and the table will have an extra row, and all columns will be named V1, V2, and so on...
###Why My Data Set Is Tidy
My data set is tidy as it conforms to the 4 essential (and 3 important) rules of tidy data (taken from Week 1 Lecture 3 - Components of Tidy Data):  
**1.** Each variable is in its own column  
**2.** Each observation of each variable is in its own row  
**3.** Rule 3 applies to multiple tables, which is not applicable here  
**4.** Rule 4 applies to multiple tables, which is not applicable here  
**5.** A header row has been included at the top of the file  
**6.** Each column has been given a descriptive name  
**7.** Rule 7 applies to multiple tables, which is not applicable here
###My Variables
During my extraction of certain columns of the raw data, I have chosen to extract only those columns with a heading containing either "mean()" or "std()", as I believe that only these columns contain the measurements on the mean and standard deviation of each measurement, as required by step 2 of the instructions.  
My variable names follow the naming convention outlined below:  
+ Start of variable name:
  + "Time" represents a time domain signal measurement
  + "Freq" represents a frequency domain signal measurement
+ Middle of variable name - these remain unchanged from the raw data, as they are as descriptive as is sufficient to understand the measurement being reported
+ End of variable name:
  + "Mean" indicates that the value is an estimate of the mean of the signal
  + "STD" indicates that the value is an estimate of the standard deviation of the signal
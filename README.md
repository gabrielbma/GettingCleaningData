GettingCleaningData
===================

##About This Repository
This repository was created for submission of my Course Project for the Getting &amp; Cleaning Data course hosted on Coursera.

There are 5 files in this repository:  
**1.** ARyanSMSMergedSamsungData.txt - this is the merged data set that is generated from my R Scrpt, prior to averages being taken  
**2.** ARyanSMSTidySamsungData.txt - this is the tidy data set that is generated from my R Script, after the averages have been calculated, by student by activity for each variable  
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
This function will perform the following tasks (for a more detailed description of each task, please refer to my Code Book (_CodeBook.md_):  
+ Verify the existence of all data files in the original raw data set
+ Combine the subject ID, the activity ID, and the _mean()_ and _std()_ columns from the X data files into a single table
+ Name the columns accordingly
+ Replace activity IDs with activity names
+ Write the new merged data table to a file called ARyanSMSMergedSamsungData.txt
+ Create a new summary table containing subject IDs, activity names, and the mean of the data from the merged table that match the subject and activity for each column
+ Write the new summary data table to a file called ARyanSMSTidySamsungData.txt
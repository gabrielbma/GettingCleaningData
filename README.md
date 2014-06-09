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
All data transformations required to create a tidy data set from the raw Samsung data can be completed by sourcing only the run_analysis R Script:  
```S
> source("run_analysis.R") #This assumes the file is saved in your working directory
```
Once sourced, run the following command to transform the data:
```S
> tidySamsungData()
```

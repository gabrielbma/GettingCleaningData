GettingCleaningData
===================

##About This Repository
This repository was created for submission of my Course Project for the Getting &amp; Cleaning Data course hosted on Coursera.

There are 4 files in this repository:  
**1.** ARyanSMSTidySamsungData.txt - this is the tidy data set that was submitted, and the set that is produced by my R Script  
**2.** CodeBook.md - my Code Book, which describes each variable, the data, and the transformation process from the raw data to my tidy data  
**3.** README.md - this file, which provides an explanation of the GettingCleaningData repo and its files  
**4.** run_analysis.R - my R Script that can be used to prouce ARyanSMSTidySamsungData.txt from the raw Samsung data  

##run_analysis.R
All data transformations required to create a tidy data set from the raw Samsung data can be completed by sourcing this R Script:  
```S
> source("run_analysis.R") #This assumes the file is saved in your working directory
```
Once sourced, run the following command to transform the data:
```S
> tidySamsungData()
```

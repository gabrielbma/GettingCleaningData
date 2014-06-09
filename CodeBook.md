Code Book
=========

##Variable Names
The following table describes each of the variables used in my tidy data set. A description of the units is as follows:
+ N/A: no units are applicable to this variable
+ g: standard gravity units, a measure of linear acceleration
+ rad/s: radians per second, a measure of rotational velocity
Each description is obtained from the descriptions provided in the raw data. Each variable describes the measurement that has been used to calculate the data in the table.

| Column | Variable Name | Description | Units |
|:------:|:--------------|:------------|:-----:|
| 1 | SubjectID | A number from 1 to 30 used as an identifier for each test subject (person) | N/A |
| 2 | Activity | The activity that the subject performed to obtain the given measurements. Can be any one of the following:<ul><li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li></ul>I will assume that these activity names are descriptive enough that I don't need to explain any of them | N/A |
| 3 | TimeBodyAccMeanX | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 4 | TimeBodyAccMeanY | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 5 | TimeBodyAccMeanZ | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 6 | TimeBodyAccSTDX | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 7 | TimeBodyAccSTDY | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 8 | TimeBodyAccSTDZ | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 9 | TimeGravityAccMeanX | The average of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 10 | TimeGravityAccMeanY | The average of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 11 | TimeGravityAccMeanZ | The average of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 12 | TimeGravityAccSTDX | The standard deviation of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 13 | TimeGravityAccSTDY | The standard deviation of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 14 | TimeGravityAccSTDZ | The standard deviation of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 15 | TimeBodyAccJerkMeanX | The average of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 16 | TimeBodyAccJerkMeanY | The average of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 17 | TimeBodyAccJerkMeanZ | The average of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 18 | TimeBodyAccJerkSTDX | The standard deviation of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 19 | TimeBodyAccJerkSTDY | The standard deviation of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 20 | TimeBodyAccJerkSTDZ | The standard deviation of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 21 | TimeBodyGyroMeanX | The average of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 22 | TimeBodyGyroMeanY | The average of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 23 | TimeBodyGyroMeanZ | The average of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 24 | TimeBodyGyroSTDX | The standard deviation of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 25 | TimeBodyGyroSTDY | The standard deviation of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 26 | TimeBodyGyroSTDZ | The standard deviation of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 27 | TimeBodyGyroJerkMeanX | The average of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 28 | TimeBodyGyroJerkMeanY | The average of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 29 | TimeBodyGyroJerkMeanZ | The average of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 30 | TimeBodyGyroJerkSTDX | The standard deviation of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 31 | TimeBodyGyroJerkSTDY | The standard deviation of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 32 | TimeBodyGyroJerkSTDZ | The standard deviation of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 33 | TimeBodyAccMagMean | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 34 | TimeBodyAccMagSTD | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 35 | TimeGravityAccMagMean | The average of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 36 | TimeGravityAccMagSTD | The standard deviation of the 128 time domain linear gravity acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 37 | TimeBodyAccJerkMagMean | The average of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 38 | TimeBodyAccJerkMagSTD | The standard deviation of the 128 time domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 39 | TimeBodyGyroMagMean | The average of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 40 | TimeBodyGyroMagSTD | The standard deviation of the 128 time domain angular body velocity signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 41 | TimeBodyGyroJerkMagMean | The average of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 42 | TimeBodyGyroJerkMagSTD | The standard deviation of the 128 time domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 43 | FreqBodyAccMeanX | The average of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 44 | FreqBodyAccMeanY | The average of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 45 | FreqBodyAccMeanZ | The average of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 46 | FreqBodyAccSTDX | The standard deviation of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 47 | FreqBodyAccSTDY | The standard deviation of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 48 | FreqBodyAccSTDZ | The standard deviation of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 49 | FreqBodyAccJerkMeanX | The average of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 50 | FreqBodyAccJerkMeanY | The average of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 51 | FreqBodyAccJerkMeanZ | The average of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 52 | FreqBodyAccJerkSTDX | The standard deviation of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| 53 | FreqBodyAccJerkSTDY | The standard deviation of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| 54 | FreqBodyAccJerkSTDZ | The standard deviation of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| 55 | FreqBodyGyroMeanX | The average of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 56 | FreqBodyGyroMeanY | The average of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 57 | FreqBodyGyroMeanZ | The average of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 58 | FreqBodyGyroSTDX | The standard deviation of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the X-axis | rad/s |
| 59 | FreqBodyGyroSTDY | The standard deviation of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Y-axis | rad/s |
| 60 | FreqBodyGyroSTDZ | The standard deviation of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, around the Z-axis | rad/s |
| 61 | FreqBodyAccMagMean | The average of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 62 | FreqBodyAccMagSTD | The standard deviation of the 128 frequency domain linear body acceleration signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 63 | FreqBodyAccJerkMagMean | The average of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 64 | FreqBodyAccJerkMagSTD | The standard deviation of the 128 frequency domain linear body acceleration jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | g |
| 65 | FreqBodyGyroMagMean | The average of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 66 | FreqBodyGyroMagSTD | The standard deviation of the 128 frequency domain angular body velocity signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 67 | FreqBodyGyroJerkMagMean | The average of the 128 frequency domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |
| 68 | FreqBodyGyroJerkMagSTD | The standard deviation of the 128 frequency domain angular body velocity jerk signals captured within a 2.56 second window at 50Hz, calculated from the magnitude of the 3-dimensional vectors | rad/s |

##Data Values
###Raw Data
The raw data, when merged appropriately into a single table, contains the following information on each row:
+ Subject ID (1 - 30)
+ Activity ID (1 - 6)
+ One column for each measurement taken for a single window, which consists of 128 signals taken at 50Hz, for a duration of 2.56 seconds. The 128 signals are consolidated according to the required function (mean, standard deviation, max, etc.) and recorded in the table as a single value

For each subject and each activity, it is important to note that there are multiple rows representing the same measurement taken over a different window.

###Tidy Data
The tidy data considers only the mean and standard deviation functions. The values present in each row of the tidy data table represent the average across all windows of each function (defined by the column header) for the subject ID listed in column 1 performing the activity listed in column 2.  

**For example:** if there were 30 windows reported of subject 9 performing task 3 (WALKING_DOWNSTAIRS), then the tidy data will report the average of each appropriate column for those 30 windows (each window represented as an individual row in the raw data as previously mentioned).

##Recipe
The following steps describe the transformations that must occur to the raw data in order to replicate the tidy data that I have submitted from the raw data provided:  
**1.** Read the _subject_test.txt_ file and store it in a data frame  
**2.** Read the _subject_train.txt_ file and store it in a data frame  
**3.** Row bind the data frames from steps 1 and 2, with the step 1 data frame at the top. This will result in a single-column data frame containing the list of subjects for the measurement data  
**4.** Read the _y_test.txt_ file and store it in a data frame  
**5.** Read the _y_train.txt_ file and store it in a data frame  
**6.** Row bind the data frames from steps 5 and 6, with the step 5 data frame at the top. This will result in a single-column data frame containing the list of activity IDs for the measurement data  
**7.** Read the _features.txt_ file and store it in a data frame  
**8.** Create a logical (TRUE/FALSE) vector calculated from the feature names. This vector should return TRUE only if "mean()" or "std()" is present in column 2 of the data frame from step 7  
**9.** Create a character vector from the logical vector in step 8. This vector should read "numeric" if the logical vector is TRUE and "NULL" otherwise. This vector will be used to define the column classes of the measurement data. A column with a class "NULL" will not be read in, thus avoiding using too much memory when reading the large text files  
**10.** Read the _X_test.txt_ file and store it in a data frame. Make sure that the colClasses parameter points to the vector that was created in step 9  
**11.** Read the _X_train.txt_ file and store it in a data frame. Make sure that the colClasses parameter points to the vector that was created in step 9  
**12.** Row bind the data frames from steps 10 and 11, with the step 10 data frame at the top. This will result in a single data frame containing all of the measurement data that was recorded  
**13.** Column bind the subjects data frame from step 3, the activity ID data frame from step 6 and the measurements data frame from step 12, in that order from left-to-right  
**14.** Subset the features data frame from step 7, by only keeping rows that are TRUE in the logical vector created in step 8. This will form the list of headers for the columns that were extracted from the measurements data in steps 10 and 11  
**15.** Transform the feature names from column 2 in the data frame from step 14 into something readable as follows:  

  **a.** Replace any headings starting with "t" with "Time"  
  **b.** Replace any headings starting with "f" with "Freq"  
  **c.** Replace any headings containing "-mean()" with "Mean"  
  **d.** Replace any headings containint "-std()" with "STD"  
  **e.** Remove any remaining instances of a hyphen (replace "-" with an empty string "")  
  **f.** Replace any instances of "BodyBody" with "Body"  

**16.** Assign some names to the data frame from step 13 as follows:  

  **a.** Column 1 name is "SubjectID"  
  **b.** Column 2 name is "Activity"  
  **c.** The remainder of the columns are named using the second column of the subsetted and transformed data frame created in step 15  

**17.** Read the _activity_labels.txt_ file and store it in a data frame  
**18.** 
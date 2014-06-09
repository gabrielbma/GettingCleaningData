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

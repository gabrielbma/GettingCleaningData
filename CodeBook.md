Code Book
=========

## Variable Names
The following table describes each of the variables used in my tidy data set. A description of the units is as follows:
+ N/A: no units are applicable to this variable
+ g: standard gravity units, a measure of linear acceleration
+ rad/s: radians per second, a measure of rotational velocity

| Variable Name | Description | Units |
|:--------------|:------------|:-----:|
| SubjectID | A number from 1 to 30 used as an identifier for each test subject (person) | N/A |
| Activity | The activity that the subject performed to obtain the given measurements. Can be any one of the following:<ul><li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li></ul>I will assume that these activity names are descriptive enough that I don't need to explain any of them | N/A |
| TimeBodyAccMeanX | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| TimeBodyAccMeanY | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| TimeBodyAccMeanZ | The average of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
| TimeBodyAccSTDX | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the X-axis | g |
| TimeBodyAccSTDY | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Y-axis | g |
| TimeBodyAccSTDZ | The standard deviation of the 128 time domain linear body acceleration signals captured within a 2.56 second window at 50Hz, along the Z-axis | g |
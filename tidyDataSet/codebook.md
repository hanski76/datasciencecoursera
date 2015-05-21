# Codebook for tidy data set returned by run_analysis.R

Original raw data being analyzed by run_analysis is downloaded from [raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Original data contains multiple measurements of multiple variables calculated for accelerometer and gyroscope sensor signals obtained from multiple mobile devices. These measurement values are normalized and bound within [-1, 1].

This tidy data set table contains measurement data value averages for each subject - activity -combination on each mean and standard deviation variable from original raw data set.

Table has following columns:
----------------------------
*col number*  |   *variable name*   |   *value explanation*

1. | subject | 1-30. The subject being analyzed.
2. | activity | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. | tBodyAcc-mean()-X | Average of all raw data measurements of this variable
4. | tBodyAcc-mean()-Y | Average of all raw data measurements of this variable
5. | tBodyAcc-mean()-Z | Average of all raw data measurements of this variable
6. | tBodyAcc-std()-X | Average of all raw data measurements of this variable
7. | tBodyAcc-std()-Y | Average of all raw data measurements of this variable
8. | tBodyAcc-std()-Z | Average of all raw data measurements of this variable
9. | tGravityAcc-mean()-X | Average of all raw data measurements of this variable
10. | tGravityAcc-mean()-Y | Average of all raw data measurements of this variable
11. | tGravityAcc-mean()-Z | Average of all raw data measurements of this variable
12. | tGravityAcc-std()-X | Average of all raw data measurements of this variable
13. | tGravityAcc-std()-Y | Average of all raw data measurements of this variable
14. | tGravityAcc-std()-Z | Average of all raw data measurements of this variable
15. | tBodyAccJerk-mean()-X | Average of all raw data measurements of this variable
16. | tBodyAccJerk-mean()-Y | Average of all raw data measurements of this variable
17. | tBodyAccJerk-mean()-Z | Average of all raw data measurements of this variable
18. | tBodyAccJerk-std()-X | Average of all raw data measurements of this variable
19. | tBodyAccJerk-std()-Y | Average of all raw data measurements of this variable
20. | tBodyAccJerk-std()-Z | Average of all raw data measurements of this variable
21. | tBodyGyro-mean()-X | Average of all raw data measurements of this variable
22. | tBodyGyro-mean()-Y | Average of all raw data measurements of this variable
23. | tBodyGyro-mean()-Z | Average of all raw data measurements of this variable
24. | tBodyGyro-std()-X | Average of all raw data measurements of this variable
25. | tBodyGyro-std()-Y | Average of all raw data measurements of this variable
26. | tBodyGyro-std()-Z | Average of all raw data measurements of this variable
27. | tBodyGyroJerk-mean()-X | Average of all raw data measurements of this variable
28. | tBodyGyroJerk-mean()-Y | Average of all raw data measurements of this variable
29. | tBodyGyroJerk-mean()-Z | Average of all raw data measurements of this variable
30. | tBodyGyroJerk-std()-X | Average of all raw data measurements of this variable
31. | tBodyGyroJerk-std()-Y | Average of all raw data measurements of this variable
32. | tBodyGyroJerk-std()-Z | Average of all raw data measurements of this variable
33. | tBodyAccMag-mean() | Average of all raw data measurements of this variable
34. | tBodyAccMag-std() | Average of all raw data measurements of this variable
35. | tGravityAccMag-mean() | Average of all raw data measurements of this variable
36. | tGravityAccMag-std() | Average of all raw data measurements of this variable
37. | tBodyAccJerkMag-mean() | Average of all raw data measurements of this variable
38. | tBodyAccJerkMag-std() | Average of all raw data measurements of this variable
39. | tBodyGyroMag-mean() | Average of all raw data measurements of this variable
40. | tBodyGyroMag-std() | Average of all raw data measurements of this variable
41. | tBodyGyroJerkMag-mean() | Average of all raw data measurements of this variable
42. | tBodyGyroJerkMag-std() | Average of all raw data measurements of this variable
43. | fBodyAcc-mean()-X | Average of all raw data measurements of this variable
44. | fBodyAcc-mean()-Y | Average of all raw data measurements of this variable
45. | fBodyAcc-mean()-Z | Average of all raw data measurements of this variable
46. | fBodyAcc-std()-X | Average of all raw data measurements of this variable
47. | fBodyAcc-std()-Y | Average of all raw data measurements of this variable
48. | fBodyAcc-std()-Z | Average of all raw data measurements of this variable
49. | fBodyAccJerk-mean()-X | Average of all raw data measurements of this variable
50. | fBodyAccJerk-mean()-Y | Average of all raw data measurements of this variable
51. | fBodyAccJerk-mean()-Z | Average of all raw data measurements of this variable
52. | fBodyAccJerk-std()-X | Average of all raw data measurements of this variable
53. | fBodyAccJerk-std()-Y | Average of all raw data measurements of this variable
54. | fBodyAccJerk-std()-Z | Average of all raw data measurements of this variable
55. | fBodyGyro-mean()-X | Average of all raw data measurements of this variable
56. | fBodyGyro-mean()-Y | Average of all raw data measurements of this variable
57. | fBodyGyro-mean()-Z | Average of all raw data measurements of this variable
58. | fBodyGyro-std()-X | Average of all raw data measurements of this variable
59. | fBodyGyro-std()-Y | Average of all raw data measurements of this variable
60. | fBodyGyro-std()-Z | Average of all raw data measurements of this variable
61. | fBodyAccMag-mean() | Average of all raw data measurements of this variable
62. | fBodyAccMag-std() | Average of all raw data measurements of this variable
63. | fBodyBodyAccJerkMag-mean() | Average of all raw data measurements of this variable
64. | fBodyBodyAccJerkMag-std() | Average of all raw data measurements of this variable
65. | fBodyBodyGyroMag-mean() | Average of all raw data measurements of this variable
66. | fBodyBodyGyroMag-std() | Average of all raw data measurements of this variable
67. | fBodyBodyGyroJerkMag-mean() | Average of all raw data measurements of this variable
68. | fBodyBodyGyroJerkMag-std() | Average of all raw data measurements of this variable





___

* Author: hanski76
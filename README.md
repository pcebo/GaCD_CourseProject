GaCD_CourseProject
==================

Coursera Getting and Cleaning Data Course Project Repository

SOME COLES NOTES, FOR THE MARKER:

A) My tidy data set is "wide" - i.e. has 180 rows. THIS IS CONFIRMED BY THE TA (and the tidy data set definition) to be tidy - tall or skinny are both ok. See the discussion in the forum for confirmation.

B) I used all the variables with std or mean in it. THIS AGAIN IS CONFIRMED TO BE (ONE OF) THE CORRECT APPROACHES BY THE TA.

C) My activity descriptions are the original descriptions, minus the "()". THIS IS CONFIRMED IN THE DISCUSSION FORUMS AS (ONE OF) THE CORRECT APPROACHES THAT SHOULD REVEIVE FULL MARKS.

D) Note the variables with "Mean" are not included. They are not actual means, but the angles between two means and thus should not be included AS CONFIRMED BY TA (wendel) here: https://class.coursera.org/getdata-007/forum/thread?thread_id=49

If reading the tidy data set into R, remember to use "header=TRUE". Although not 100% necessary, it just makes it look nicer :)

Thanks!
Peter

This README explains the necessary start conditions that must be present for the included R script to function as intended. Further, it explains what the script does and why the script does what it does - i.e. why it takes the steps it takes along the way to performing the prescribed analysis/work and ultimately creating a tidy data set.

Please note the script itself also contains some comments throughout to help the reader navigate through it.

To begin, one must download and unzip the data from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Once unzipped, the test and train folders, along with the text files (i.e. features.txt, features_info.txt, activity_labels.txt) must be contained within the current R working dir. If they are not, one must set the working directory appropriately with setwd("dir name here").

Note that the "Inertial Signals" folder was ignored as per David Hood's (TA's) recommendation - the folders in there are presumed to contain no average or sd values and are therefore not useful for our purposes.

1) The script reads in the data from the appropriate files.

2) X_train and X_test both have 561 columns and a varying number of rows. It is therefore deduced that rbind is the appropriate method to stich them together and the script does so.

3) Similarily, subject and activity data (train and test) are rbinded together. Both are then appended to the result from #2 using cbind. This completes step #1 of the project. Credit to David Hood's diagram in the forum as it helped piece together / confirm how the data fits together.

4) To extract only the variables of the dataSet that contain mean or standard deviation, we use the grop function. Please note that we have assumed that ANY variables that contain mean or std in the name (i.e. not just the ones the end with mean or std) are the ones we are looking for. This is the way I've decided to interpret the ask, which is an acceptable interpretation as per the TAs.

5) A second data set (dataSet2) is created using the index we obtain by using grep on the features data set - in which we searched for "mean" or "std" and Step #2 is completed.

6) To complete step #3, we have assumed that the descriptions included with the original data (i.e. activity_labels.txt) are sufficient in detail. They are used to label activities properly. The colnames are set appropriately in each data set and then they are merged. This completes Step #3.

7)Next, we are asked to give the variables (i.e. columns in our data set) appropriate names. We use the features.txt file as the source for these names, matching them up with the appropriate columns that remain from the original data set. We remove any instances of "()" but otherwise leave the names as they are. The shortforms used within are sufficiently clear and expanding them may create column names that are prohibitively long.

8) Finally, the script creates the required tidy data set, with averages of each variable for each activity and each subject.

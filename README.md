CleaningDataProject
===================

Contains the source code for the project requirement of the Coursera course Getting and Cleaning Data

This script takes test data and training data provided to us for the course project and combines them into a single table.  It then adds column headings to the table and calculates the mean and standard deviation for every column in the table.  The table of resulting means and standard deviations is then output.

The variables are:

xAll - the combined training and testing data for from the files starting with 'X'
yAll - the combined training and testing data for from the files starting with 'Y'
subjectAll - the combined training and testing data for from the files starting with 'Subject'
xMeans - the vector of means for all columns
xDeviations - the vector of standard deviations for all columns
nColunms - the number of colunms in the clean data set
nRows - the number of rows in the clean data set

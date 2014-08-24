
# first combine the test and train data into three data frames
xAll <- appendRows('test/x_test.txt', 'train/x_train.txt')
yAll <- appendRows(file1 = 'test/y_test.txt', file2 = 'train/y_train.txt')
subjectAll <- appendRows(file1 = 'test/subject_test.txt', file2 = 'train/subject_train.txt')

# next, add the titles to the x data frame
xAll <- addColumnNames(xAll, 'features.txt')

# calculate the means
xMeans <- colMeans(xAll)

# calculate the standard deviations
xStandardDeviations <- apply(xAll, 2, sd)

# create the new dataset
nColumns = as.numeric(ncol(xAll))

cleanData <- as.data.frame(matrix(0, ncol = nColumns, nrow = 2))
names(cleanData) <- names(xAll)

cleanData[1,] <- xMeans
cleanData[2,] <- xStandardDeviations



# appendRows appends the rows of data from file2 to the end of file1.
# The function assumes that both files have the same number and type of columns

appendRows <- function(file1, file2) {
        # get the test data
        dataTest <- read.table(file1)
        
        # get the training data
        dataTrain <- read.table(file2)
        
        # combine the two and return the data frame
        dataAll <- rbind(dataTest, dataTrain)
}

# addColumnNames will take the string in the second column of fileColumnNames and make it the 
# title of the corresponding ROW in the unnamedData data frame.  fileTitles must have as many 
# rows as dataNeedingTitles has columns.

addColumnNames <- function(unnamedData, fileColumnNames){
        # get the titles
        columnNameData <- read.table(fileColumnNames)

        # use row 2 of the transposed data frame as the column headings
        names(unnamedData) <- columnNameData[,2]
        
        # return the updated data frame
        unnamedData
}





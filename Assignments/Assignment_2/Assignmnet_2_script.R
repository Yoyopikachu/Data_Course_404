# Assignment 2 (G. Zahn)

# Task 4: find the csv files and save as an object
csv_files <- list.files(path = 'Data', pattern = '.csv', recursive = T)


# Task 5: how many files match?
length(csv_files) 


# Task 6: 
# Open the wingspan_vs_mass.csv file and store the contents as an R object named “df” using the read.csv() function
df <- read.csv(list.files(pattern = 'wingspan_vs_mass.csv', recursive = T))


# Task 7:
# Inspect the first 5 lines of this data set using the head() function
head(df, n = 5)


# Task 8:
# Find any files (recursively) in the Data/ directory that begin with the letter “b” (lowercase)
list.files(path = 'Data', pattern = '^b', recursive = T)


# Task 9:
# Write a command that displays the first line of each of those “b” files (this is tricky… use a for-loop)
bfiles <- list.files(path = 'Data', pattern = '^b', recursive = T, full.names = T)

readLines(bfiles[1], n = 1)
readLines(bfiles[2], n = 1)
readLines(bfiles[3], n = 1)

# for-loop
for(i in bfiles){
  print(readLines(i, n = 1))
}


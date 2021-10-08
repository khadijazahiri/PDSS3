# Exercise 1

# This is a smiling Jewish Robot 
plot(x = 1, y = 1, type = 'n',
     xlim = c(-4, 4), ylim = c(-4, 4), pch=11)

# This is code for plotting red eyes of the robot
points(x = -1, y = 1, pch = 19, col = "red")
points(x = 1, y = 1, pch = 19, col = "red")
# These are the segments for drawing the robots face and mouth
segments(x0 = -1, y0 = -1, x1 = 1, y1 = -1)
segments(x0 = -1, y0 = -1, x1 = -1, y1 = -0.5)
segments(x0 = -1, y0 = -0.5, x1 = 1, y1 = -0.5)
segments(x0 = 1, y0 = -0.5, x1 = 1, y1 = -1)
segments(x0 = -0.5, y0 = -0.5, x1 = -0.5, y1 = -1)
segments(x0 = 0, y0 = -0.5, x1 = 0, y1 = -1)
segments(x0 = 0.5, y0 = -0.5, x1 = 0.5, y1 = -1)
segments(x0 = -2, y0 = 2, x1 = -2, y1 = -2)
segments(x0 = -2, y0 = -2, x1 = 2, y1 = -2)
segments(x0 = 2, y0 = -2, x1 = 2, y1 = 2)
segments(x0 = -2, y0 = 2, x1 = 2, y1 = 2)

# This is a loop to draw the robot's chain
x <- 0:10

for (i in x) 
{
  points(x = -1 + (i/10) , y = -2.1 - (i/10), pch = 20, col = "azure3")
}

for (i in x) 
{
  points(x =  1 - (i/10), y = -2.1 - (i/10), pch = 20, col = "azure3")
}
# This is for drawing the robot's David's star  
points(x = 0, y = -3.45, pch = 11, col = "darkcyan")

# Exercise 3

# x_values was missing a coma in the sequence 
# The other error is the parameter in mean function X_value is not defined because R is case sensitive

x_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
mean_x <- mean(x_values)
mean_x

# Exercise 4

# We used the function as.numeric to cast '4' from character to an integer
x <- c(2, 3, 4, '4')
x <- as.numeric(x)
mean(x)

#Exercise 5 

# First we have to change the working directory to the one where 'nettle_1999_climate.csv' file exist
# The other error is not reading the file before retrieve data from it
# The last error is using '=' instead of '=='
nettle <- read.csv('nettle_1999_climate.csv')
nettle[nettle$Country == 'Yemen', ]

#Exercise 6

head(nettle)
nettle[2, 5] # This code shows the data in the second row and the fifth row 
nettle[1:4, ] # This line shows the first four rows of nettle data frame
nettle[1:4, 1:2] # This line shows the data in the first and second column of the first four rows
nettle[nettle$Country == 'Bangladesh', ] # This line shows the rows that have Bangladesh as a country
nettle[nettle$Country == 'Bangladesh', 5] # This line shows the fifth column of the rows that have Bangladesh as a country
nettle[nettle$Country == 'Bangladesh', ] [, 5]  # This line shows the fifth column of the rows that have Bangladesh as a country
nettle[nettle$Country == 'Bangladesh', ] $Langs # This line shows the values of the column 'Langs'  of the rows that have Bangladesh as a country
nettle[nettle$Country == 'Bangladesh', 'Langs'] # This line shows the values of the column 'Langs'  of the rows that have Bangladesh as a country
nettle[1:4, ] $Langs[2] # This line retrieve the first four rows of nettle data frame, then it displays the value of Langs of the second element in that list
nettle[1:4, c('Country', 'Langs')] # This line the columns 'Country' and 'Langs' of the first four rows
head(nettle[,]) # This line shows the head of nettle data frame (the first six rows )



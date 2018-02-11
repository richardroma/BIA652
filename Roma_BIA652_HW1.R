#Richard Roma
#BIA 652
#Homework 1

#Create PDF for Plot Outputs
pdf(file = "C:/Users/Dell User/Documents/Stevens MBA/Spring 18/BIA 652/Assignment1/Roma_BIA652_HW1_R_output.pdf",
    title = "Homework 1 - Plot Output Data")


#Problem 3.3

#Read Depress.Txt data into R with read.table().

depres <- read.table("C:/Users/Dell User/Documents/Stevens MBA/Spring 18/BIA 652/Data_for_HW/Depress.txt", header = FALSE)

#Check the data read is accurate.
head(depres)

#Assign Column Names for the Depress Dataset based on codebook for easier analysis.
colnames(depres) <- c('ID','Sex','Age','Marital','Educat','Employ','Income','Relig','C1','C2','C3','C4','C5','C6',
                           'C7','C8','C9','C10','C11','C12','C13','C14','C15','C16','C17','C18','C19','C20','CESD','Cases',
                           'Drink','Health','Regdoc','Treat','Beddays','Acuteill','Chronill')

#Check the headers were added correctly.
head(depres)

#Plot the income versus employment status from the dataset.
plot(depres$Employ, depres$Income,xlab='Employment Status',ylab='Income')


#Problem 4.1
#Create a variable equal to the negative of one divided by the cubic root of income.
depres$Income_cbrt <- (-1)/(depres$Income^(1/3))

#Check the new variable Income_cbrt
head(depres$Income)
head(depres$Income_cbrt)

#Display a normal probability plot of the variable Income_cbrt
qqnorm(depres$Income_cbrt)
qqline(depres$Income_cbrt)


#Problem 4.2
#Take the logarithm to base 10 of the income variable in the depression dataset.
depres$Income_log <- log10(depres$Income)

#Histogram of Income Histogram of Log(Income)
hist(depres$Income,main="Histogram of Income",xlab="Income",col="yellow")
hist(depres$Income_log,main="Histogram of Log(Income)",xlab="Income",col="yellow")

#Normal Probability Plots of Income and log(Income)
qqnorm(depres$Income)
qqline(depres$Income)

qqnorm(depres$Income_log)
qqline(depres$Income_log)


#Problem 4.3, Part #1
#Create a variable equal to the negative of one divided by the square root of income.
depres$Income_sqrt <- depres$Income^(1/2)

#Check the new variable Income_sqrt
head(depres$Income)
head(depres$Income_sqrt)

#Display a normal probability plot of the variable Income_sqrt
qqnorm(depres$Income_sqrt)
qqline(depres$Income_sqrt)

#Problem 4.3, Part #2
#Take the logarithm to base 10 of the income variable in the depression dataset.
depres$Income_log_sqrt <- log10(depres$Income_sqrt)

#Histogram of Income Histogram of Log(Income)
hist(depres$Income,main="Histogram of Income",xlab="Income",col="yellow")
hist(depres$Income_log_sqrt,main="Histogram of Log(Income), Sq. Rt",xlab="Income",col="yellow")

#Normal Probability Plots of Income and log(Income)
qqnorm(depres$Income)
qqline(depres$Income)

qqnorm(depres$Income_log_sqrt)
qqline(depres$Income_log_sqrt)


dev.off()
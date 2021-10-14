install.packages("fivethirtyeight")
install.packages("splitstackshape")
install.packages("tidyverse")
install.packages("reshape2")
install.packages("devtools")
install.packages("plotly")
install.packages("crosstalk")
install.packages("DT")
install.packages("jsonlite")
library("jsonlite")
library("tidyverse")
library("dplyr")

# Deliverable 1 Challenge
# Import and read csv file into a dataframe 
mechCar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)
# Create a linear regression model on all six variables 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechCar_mpg_df)
# Summary statistics of the linear regression model with p-values and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechCar_mpg_df))

# Deliverable 2 Challenge
# Import and read suspension fle csv file into a dateframe
suspension_coil_df <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)
# Create total summary dataframe
total_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Create lot summary dataframe
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

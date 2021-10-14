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

# Deliverable 3 Challenge
?t.test()
# Determine if  PSI across all lots is different from pop. mean (1,500)
t.test(log10(suspension_coil_df$PSI), mu=mean(log10(suspension_coil_df$PSI)))
# Create 3 more RScripts using subset() to determine PSI
# lot 1
lot1 <- subset(suspension_coil_df, Manufacturing_Lot == "Lot1")
t.test(log10(lot1$PSI),mu=mean(log10(suspension_coil_df$PSI)))
#lot 2
lot2 <- subset(suspension_coil_df, Manufacturing_Lot == "Lot2")
t.test(log10(lot2$PSI), mu=mean(log10(suspension_coil_df$PSI)))
# lot 3
lot3 <- subset(suspension_coil_df, Manufacturing_Lot == "Lot3")
t.test(log10(lot3$PSI), mu=mean(log10(suspension_coil_df$PSI)))


##Deliverable 1: Linear Regression to Predict MPG

#Load the dplyr package
library(dplyr)

#Save data as a dataframe
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Get linear regression using lm(), passing the 6 variables
MechaCar_linreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df)

#Using summary() function determine the p-value and the r-squared value
summary(MechaCar_linreg)


## Deliverable 2: Create Visualizations for the Trip Analysis

#Save data as a dataframe
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Summary of suspension coil's PSI column
total_summary <- Suspension_Coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std = sd(PSI))

#Individual manufacturing lot summaries
lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std = sd(PSI), .groups=NULL)


## Deliverable 3: T-Tests on Suspension Coils

#A. All lots
t.test(Suspension_Coil_df$PSI, mu = 1500)

#B. Individual lots
t.test(subset(Suspension_Coil_df, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)

t.test(subset(Suspension_Coil_df, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)

t.test(subset(Suspension_Coil_df, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)


#### OR ####
#Lot1 <- Suspension_Coil_df %>% filter(Manufacturing_Lot=='Lot1')
#t.test(Lot1$PSI, mu=1500)



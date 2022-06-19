# MechaCar_Statistical_Analysis
 Module15_RScript

## Linear Regression to Predict MPG
By deriving a linear regression model from the variables (vehicle length, weight, spoiler angle, ground clearance, & AWD) in the MechaCar_mpg.csv file, the mpg of the MechaCar prototypes can be predicted. In R, the linear regression model was found using the lm() function and the statistics below obtained using the summary() function.
![image1](/Results/D1.png)


### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
According to the results above, vehicle length and ground clearance provided non-random amounts of variance to the mpg values in the dataset. Their correlation coefficient demonstrate high levels of association between these independent variables and the dependent variable, given all other factors are unchanged.  

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not zero. The p-value of the linear regression analysis is 5.35e-11 which is significantly smaller than the significance level, therefore the null hypothesis is rejected and the slope is not zero.  

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
When only cnosidering the r^2-value of 0.7149 which is closer to 1 than 0, the linear model can predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

From the Suspension_Coil.csv data file, a statistics summary table was created fpr the PSI for all manufacturing lots (Table 1a) and each lot individually (Table 1b).    

**Table 1a. Summary of the Total PSI Values**  
![image2](/Results/D2.1.png)    

**Table 1b. Summary of the Lot PSI Values**  
![image3](/Results/D2.2.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
When considering all lots (Table 1a), the variance of the suspension coils is 62 lb/in^2 which meets the design specifications for the MechaCar suspension coils that dictates a variance not exceeding 100 lb/in^2. Individually,  l2 1 and lot 2 meets the design specification while lot 3 does not.


# T-Tests on Suspension Coils
## p1
![image4](/Results/D3.1.png)
## p2
![image5](/Results/D3.2.png)

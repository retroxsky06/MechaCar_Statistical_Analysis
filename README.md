# Vehicle Prototype Statistical Analysis in R
Module 15 Challenge 

## Project Overview
A fictional company "AutosRUs," is developing a vehicle prototype, MechCar, but there are production issues that are blocking the manufacturing team's progress. The purpose of this project is to perform statistical analysis on vehicle production data to gain insights that may assist the manufacturing team. Summary statistics and t-tests were generated. R is utilized to conduct this analysis. 

## Linear Regression to Predict MPG (d1

![fig2](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d1_summary_pvalues_r2.png)

Utilizing a multiple linear regression model on the data set, [MechaCar.mpg.csv](), the above output was given. The following conclusions can be made:
- **Vehicle Length** and **Ground Clearance** coefficients provided a non-random amount of variance to mpg data.
- The slope of the linear model is not to be considered zero as the coefficient values are not equal to 0.
- The linear model predicts mpg of MechaCar prototypes effectively as the r-squared value is .07149, which means that **71%** of mpg predictions will be correct using this model.  
- The **p-value is less than 0.05%**, which is statistically significant, resulting in rejecting the null hypothesis.

## Summary Statistics on Suspension Coils 

#### Total Summary
![fig3](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d2_total_summary.png)

The design specifications of AutoRUs' MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the summary dataframe above, the variance is 62, which complies with the design specifications.  However, it is necessary to further investigate the individual manufacturing lot to gain a better perspective.

#### Manufacturing Lot Summary
![fig4](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d2_lot_summary.png)

After delving deeper into reviewing individual manufacturing lots, it can be observed in the above manufacturing lot summary dataframe that **Manufacturing Lot 3** variance is 170, exceeding the design specifications of 100 PSI.

## T-Tests on Suspension Coils
In this portion of the analysis, t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![fig5](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d3_t_test.png)




[3 Manufacturing Lot t-tests](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d3_lot_t_tests.png)

## Study Design: MechaCar vs Competition d4

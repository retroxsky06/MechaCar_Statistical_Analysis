# Vehicle Prototype Statistical Analysis in R
Module 15 Challenge 

## Project Overview
A fictional company "AutosRUs," is developing a vehicle prototype, MechaCar, but there are production issues that are blocking the manufacturing team's progress. The purpose of this project is to perform statistical analysis on vehicle production data to gain insights that may assist the manufacturing team. Summary statistics and t-tests were generated. R is utilized to conduct this analysis. 

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
In this portion of the analysis, t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. **Based on the results, it was determined that Manufacturing Lot 2 is statistically different from the population mean.**

#### T-test on all Manufacturing Lots
![fig5](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d3_t_test.png)

The t-test above showcases that the p-value is 1, which rejects the null hypothesis, and that the mean across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.

Using the code below, t-tests were performed on the individual manufacturing lots:

```
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
```

### Results of Manufacturing Lots 1, 2, 3 t-tests
[3 Manufacturing Lot t-tests](https://github.com/retroxsky06/MechaCar_Statistical_Analysis/blob/main/images/d3_lot_t_tests.png)

- Manufacturing Lot 1: The p-value is 9.35; therefore, we cannot reject the null hypothesis.
- Manufacturing Lot 2: The p-value is 0.0005; thereforefore, **we can reject the null hypothesis.**
- Manufacturing Lot 3: The p-value is 0.15; therefore, we cannot reject the null hypothesis.

## Study Design: MechaCar vs Competition 
To quantify how the MechaCar may perform against the competition, further statistical analysis is needed. When consumers are looking to purchase a new vehicle, there are several criteria they may consider: aesthetics, cost, safety, functionality, performance, fuel economy, and technology [1](#1), ultimately coalescing into how much satisfaction, enjoyment, and usefulness, they may obtain from the vehicle.  Economists use the term **utility** which is to describe "the pleasure or satisfaction that a consumer obtains from his or her consumption of goods and services.[2](#2)" In this analysis, I would investigate the aformentioned criterias (metrics), excluding aesthetics, that would maximize consumer utility. 

#### Null and Alternate Hypothesis:

H0: MechaCar does not have high consumer utility and there is no significant evidence that it will perform well against the competition.
H1: MechaCar doe have high consumer utility and there is significant evidence that it will perform well against the competition.

#### Testing
For this analysis, multiple linear regressions and t-tests will be performed as they will be able to compare the various variables and observe if there are sgnificant differences between vehicles.  



### References
<a id="1">[1]</a>
Choksey, J. (2019, May 13). *The 7 Criteria for Car Buying.* https://www.autotrader.com/car-shopping/7-criteria-car-buying-281474979927978
<a id="2">[1]</a>
(2021). *Economics.* https://www.cliffsnotes.com/study-guides/economics/theory-of-the-consumer/utility-and-preferences


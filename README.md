# Analysis of MechaCar Production

This analysis is a review internal data for the company AutosRU. The data encompasses technical information on their prototype vehicle, the MechaCar. The MechaCar has some production issues. This analysis is designed to highlight insights to determine if there are any statistically significant barriers to production.

## Linear Regression to Predict MPG

A multiple linear regression was performed to determine the greatest impact on MPG. See the results below:

![alt text](https://github.com/sever1sd/MechaCar_Statistical_Analysis/blob/a262ca5c514fb3b01c7999afb675ac58a708b900/Images/Linear%20Regression.png)

Both Vehicle Length and Ground Clearance have a stastically significant impact on the MechaCar's MPG, indicating that there is a non-random amount of variange to the MPG values in the data. 

The other measured variables, Vehicle Weight, Spoiler Angle, and AWD did not have a statistically significant impact on MPG.

The slope in this model is not considered to be zero, because each of the variables have a non-zero coefficient. This indicates the direction and severity of the slope for each variable. Both Vehicle Length and Ground Clearance have positive coefficients. 

This model has a R-Squared of 0.7149, indicating that this model moderately predicts the MPG of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

A review of the suspension coil data was also completed. Suspension coil variance must not exceed 100 pounds per square inch, so analysis was conducted to evaluate the variance.

![alt text](https://github.com/sever1sd/MechaCar_Statistical_Analysis/blob/a262ca5c514fb3b01c7999afb675ac58a708b900/Images/Total%20Summary.png)

When reviewed as an aggregate, it appears that all suspension coils are within the variance threshold. However, when reviewing each lot individually (see below), it is apparant that Lot 3 is exceeding the variance threshold and also the main reason for a variance threshold of ~62 for the entire population.


![alt text](https://github.com/sever1sd/MechaCar_Statistical_Analysis/blob/a262ca5c514fb3b01c7999afb675ac58a708b900/Images/Lot%20Summary.png)

## T-Tests on Suspension Coils

Further analysis of the suspension coils was conducted. This review was to determine if the PSI for all MechaCars were statistically different from the population mean of 1,500 PSI

![alt text](https://github.com/sever1sd/MechaCar_Statistical_Analysis/blob/a262ca5c514fb3b01c7999afb675ac58a708b900/Images/T-Tests.png)

When reviewing the entire population from all lots, the p-value is p = 0.06028 thus we reject the alternative hypothesis and determine that there is not a statistical difference in means. However, due to the previously determined differentiation in lots, additional t-tests were conducted on each lot individually. This anlysis determined that lot 1 (p = 1) and lot 2 (p = 0.6072) did not reject the null hypothesis and thus their means were not statistically different from the population mean of 1,500 PSI. Lot 3, however, had a p-value of p = 0.04168, indicating that we should reject the null hypothesis and that the mean PSI for this lot is stastically different from 1,500 PSI.

## Study Design MechaCar vs. Competition

An additional study could be conducted to determine the consumer interest for the MechaCar. The specific metrics measured for this comparison would need to be considered against the way AutoRU is intending to enter the market. Is the MechaCar intended to be the cheapest car in its class? The safest? Most reliable? All of these are distinct metrics that should be evaluated against competition data individually. For the purposes here, we will provide one such example using cost as a variable. The general design of the analysis would be as follows:

**Null Hypothesis:** MechaCar is not statistically cheaper than competitors
**Alternative Hypothesis:** MechaCar is statistically cheaper than competitors. 

**Statistical Test to use:** 1 Sample T-Test

**Data Required:** The expected fair market value (FMV) for the MechaCar, the average FMV for several AutoRU competitors of cars in the same class as the MechaCar.

Comparing the FMV of the MechaCar to the average FMV of similar cars would determine if the MechaCar is in fact cheaper. Additional analyses would need to be conducted on other variables to determine if there are other avenues of marketing that AutoRU could pursue.


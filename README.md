# Mecha_Car_Statistical_Analysis
## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/13009587/147151878-b54da232-0867-4b96-a300-c200de802730.png)
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br><br> 
In this study it is evident that the **vehicle legnth & ground clearance** provided a non-random amount of variance to the MPG values in the dataset.
### Is the slope of the linear model considered to be zero? Why or why not?<br><br> 
The slope of this linear model is not considered to be zero, as the p-value is much smaller than the significance level, meaning some of the independent variables had an effect on the dependent variable.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br><br> 
This linear model does predict mpg of MechaCar prototypes efficiently, as the R-squared value is .7149. This means that 71 out of 100 times, the linear model predicts the MPG.

## Summary Statistics on Suspension Coils
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

In order to answer this question, a review of both the variance of all the suspension coils, along with a review by manufacturing lot is necessary. <br>
![image](https://user-images.githubusercontent.com/13009587/147155256-438783e6-3aa5-477f-bbe8-8c55e0295f14.png)
As shown in the image, the combined variance is ~62.3, which falls below the 100 pounds per square inch. <br><br>

However, when broken down by lot, it is apparent that Lot 3 is not within design specification, as its variance is ~170.3.
![image](https://user-images.githubusercontent.com/13009587/147155708-538cefeb-67a6-4508-b094-afc75a18df93.png)

## T-Tests on Suspension Coils

Conducting T-Tests on suspension coils allows us to see if the PSI for each manufacturing lot is statistically different from the population mean of 1500 PSI. The first test was done on the collective data, then individual tests were done by lot.
![image](https://user-images.githubusercontent.com/13009587/147156289-18f008e7-2ace-42b6-b924-9bf20c791f3b.png) This data shows that there is a statistical difference between the collective mean & the population mean. The p-value being much lower than the significance level of .05%, this means that we can fail to reject the alternate hypothesis: there is a significant difference between the mean PSI of all lots, combined.<br><br>
Similarly, tests were done for each lot, individually.<br>
![image](https://user-images.githubusercontent.com/13009587/147156542-dcf365aa-23ea-44f7-8c6e-4f6dfb8f9b95.png)

<br>
Lot one had a p-value of 1, which is much higher than the significance level of .05%, therefore we don't have sufficient evidence to reject the null hypothesis, meaning that the two means are statistically similar.

<br>


![image](https://user-images.githubusercontent.com/13009587/147159623-9ab25336-392b-454f-b345-438e9ecafbb4.png)


Similarly, as lot two had a p-value of 0.6072, which is higher than the significance level of .05%. Because of this, we can't reject the null hypothesis, meaning that the two means are also statistically similar.<br>
![image](https://user-images.githubusercontent.com/13009587/147156636-2873cfc6-d68b-425e-8760-f95dff4be887.png) Lot three, on the other hand, has a p-value that is less than .05%, which means we have sufficient evidence to eject the null hypothesis and state that the two means are statistically different.

## Study Design: MechaCar vs Competition
In order to quanity how MechaCar performs against the competition, we would need to begin by determining what metrics to measure. These metrics would also need to align with the target demographic: an environmentally-conscious customer may consider MPG to be the most important factor in purchasing a vehicle, while another may prioritize high horsepower.<br>
Because of a recent market-wide focus on eco-friendly vehicles, for this sample study we'll focus on city and highway fuel efficiencies. <br>
The null hypothesis will be that all of the vehicles within the same class will have the same fuel efficiencies. The alternative hypothesis would be that the vehicles within the same class would *not* have the same fuel efficiences.<br>
To best test this hypothesis, an ANOVA test would be ideal, as then you can complete this analysis based on both city and highway fuel efficiencies. <br>
In order to complete this test, the fuel efficiencies would need to be gathered from vehicles in each class. Further, to complete the comparison with the competition, vehicles' fuel efficiencies from the same classes would need to be gathered, in order to compare to MechaCar.

#accessing dplyr library
library(dplyr)

#loading csv files
carmpg = read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)
carsusp = read.csv("Suspension_Coil.csv")


#deliverable 1 - linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=carmpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=carmpg))



#deliverable 2 - summary data
total_summary <- carsusp %>% summarize(Mean_PSI = mean(PSI),
                                       Median_PSI = median(PSI),
                                       VAR_PSI = var(PSI),
                                       STDEV_PSI = sd(PSI))
lot_summary <- carsusp  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI),
                                                                      Median_PSI = median(PSI),
                                                                      VAR_PSI = var(PSI),
                                                                      STDEV_PSI = sd(PSI))
#deliverable 3 - t tests
t.test(carsusp$PSI, mu=1500)

#Used to test accuracy of t.test() with subset() embedded in function
#lot1 <- subset(carsusp, Manufacturing_Lot == "Lot1")
#lot2 <- subset(carsusp, Manufacturing_Lot == "Lot2")
#lot3 <- subset(carsusp, Manufacturing_Lot == "Lot3")

#t.test(lot1$PSI, mu=1500)
#t.test(lot2$PSI, mu=1500)
#t.test(lot3$PSI, mu=1500)

t.test(subset(carsusp,Manufacturing_Lot == "Lot1")$PSI,mu=1500)
t.test(subset(carsusp,Manufacturing_Lot == "Lot2")$PSI,mu=1500)
t.test(subset(carsusp,Manufacturing_Lot == "Lot3")$PSI,mu=1500)


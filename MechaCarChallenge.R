library(dplyr)
MechaCar <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar) 

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar) )

suspension <- read.table("Suspension_Coil.csv", sep = ",", stringsAsFactors = F, header = T)

total_summary <- suspension%>%summarize(Mean_PSI=mean(PSI),median(PSI),sd(PSI),var(PSI))
# editing header of total_summary
names(total_summary)[1] <- "Mean" 
names(total_summary)[2] <- "Median"
names(total_summary)[3] <- "SD" 
names(total_summary)[4] <- "Variance" 

#Create lot summary DF
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI),median(PSI),var(PSI),sd(PSI))
# editing header
names(lot_summary)[2] <- "Mean" 
names(lot_summary)[3] <- "Median"
names(lot_summary)[5] <- "SD" 
names(lot_summary)[4] <- "Variance" 


#T tests
t.test(suspension$PSI,mu=1500)

#making subsets for each lot
lot1 <- subset(suspension, Manufacturing_Lot =='Lot1')
lot2 <- subset(suspension, Manufacturing_Lot =='Lot2')
lot3 <- subset(suspension, Manufacturing_Lot =='Lot3')
# Tests for each lot
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
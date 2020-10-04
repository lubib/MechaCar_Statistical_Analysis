#Deliverable 1: 
library(dplyr) # load the dplyr package
mechacar <- read.csv(file="../Resources/MechaCar_mpg.csv") 

reg <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + 
            AWD, data=mechacar) #generate multiple linear regression model
summary(reg)
summary(reg)$r.squared

#Deliverable 2: 
suspension_coil <- read.csv(file="../Resources/Suspension_Coil.csv")

total_summaty <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table with multiple columns

lot_summaty <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # creating lot_summary

#Deliverable 3:
t.test(suspension_coil$PSI,mu=1500) #compare sample versus population mean

lot1_subset <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
lot2_subset <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
lot3_subset <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

t.test(lot1_subset$PSI,mu=1500)
t.test(lot2_subset$PSI,mu=1500)
t.test(lot3_subset$PSI,mu=1500)

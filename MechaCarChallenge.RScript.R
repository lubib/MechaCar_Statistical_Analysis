library(dplyr) # load the dplyr package
mechacar <- read.csv(file="../Resources/MechaCar_mpg.csv") 

reg <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + 
            AWD, data=mechacar)
summary(reg)

summary(reg)$r.squared
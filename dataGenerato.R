library(dplyr)
#source vectors
species <-c("Pica serica", "Columba livia", "Cyanocitta cristata", "Anas acuta", "Poecile atricapillus")
observer_names <-c("Elliot G.", "Cameron N.", "William P.")

#vectors for data frame(
Organisms <-sample(species, 100, replace=T) #(1)samples from source vectors
Limb_width <-log(rpois(100, 10)) #(2)samples from random poissian distribution; log norm distribution has no negatives or 0 values
Limb_length <-log(rpois(100, 10)) #(3)samples from random poissian distribution; log norm distribution has no negatives or values
Observer <-sample(observer_names, 100, replace=T) #(4)samples from source vectors


#(5)making data frame -> .csv
measurements <- data.frame(Organisms, Limb_width, Limb_length, Observer) #creates data frame
write.csv(x=measurements, file="measurements.csv") #export as csv


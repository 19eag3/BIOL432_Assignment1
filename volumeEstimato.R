library(dplyr)
MyData <-read.csv("C:/Users/egavr/OneDrive/Documents/BIOL432/a1/measurements.csv")
AddRow <- function(dat, col1, col2) { #makes variable a function, with arguments for data, and column1 and column2
  col1 <- enquo(col1) #prompts user for column 1
  col2 <- enquo(col2) #prompts user for column 2
  dat %>%
    mutate(Limb_volume = (!!col1) * (!!col2)) #calculates product of columns and imports into a new column called Volume
}

MyData2 <-data.frame(AddRow(MyData, MyData$Limb_width,MyData$Limb_length)) #formula l*w was used to calculate volume

measurements <- MyData2
write.csv(x=measurements, file="measurements.csv") #export as csv


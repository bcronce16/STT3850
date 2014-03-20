site <- "http://www1.appstate.edu/~arnholta/PASWR/CD/data/Poplar3.CSV"
poplar <- read.csv(file = site)
head(poplar, n = 5) ## show first five rows 
tail(poplar)

str(poplar)
summary(poplar)



## gets rid of NA's or in this case -99 values
poplarC <- read.csv(file = url(site), na.strings = "-99", 
                    colClasses = c(rep("factor", 3), rep("numeric", 3), "factor"))
head(poplarC, n = 5) ## show first five rows 
tail(poplarC)

str(poplarC)
summary(poplarC)

poplarC$Height ## shows height values inside the data frame
plot(poplarC$Height, poplarC$Weight)

poplarC$Height > 8 ## finds heights greater than 8, returns true /  false
poplarC$Height[poplarC$Height < 2] ## finds heights less than two and returns the actual values
poplarC$Height[1:10] ## gets values of height 1 through 10


dim(poplarC) ## gives dimensions

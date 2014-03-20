# Bradley Cronce
# 01/28/2014

library(PASWR) # load library needed for EPIDURALf data
?EPIDURALf
head(EPIDURALf) # displayes the first 6 rows in the data
EPIDURALf$BMI <- EPIDURALf$kg/(EPIDURALf$cm/100)^2 # BMI => kg/((cm/100)^2)
head(EPIDURALf) # displays the first 6 rows of data with BMI added
EPI <- EPIDURALf # creates a shorter name
tapply(EPI$BMI, EPI$Treatment, mean) # gives two means

# 3 S's - (1) shape - graph (histogram, densityplot)
#         (2) 
#         (3)


##-----Show shape of BMI-----##

library(ggplot2)
library(PASWR) # load library needed for EPIDURALf data
EPI <- EPIDURALf # creates a shorter name
p <- ggplot(data = EPI, aes(x = BMI)) # data always has to be a data fram for ggplot2
p # does nothing
p + geom_histogram() # creates ggplot histogram
p + geom_density() # creates ggplot density plot
p + geom_density() + facet_grid(Treatment~.) # creates ggplot density plot with facet grid with 2 rows of treatment
p + geom_density() + facet_grid(Treatment~Doctor) # creates ggplot density plot with 8 facet grid with 2 rows of treatment and 4 columns

#-- sets p to have color based on treatment
p <- ggplot(data = EPI, aes(x = BMI, color = Treatment)) # data always has to be a data fram for ggplot2
p + geom_histogram() # creates ggplot histogram
p + geom_density() # creates ggplot density plot
p + geom_density() + facet_grid(Treatment~.) # creates ggplot density plot with facet grid with 2 rows of treatment
p + geom_density() + facet_grid(Treatment~Doctor) # creates ggplot density plot with 8 facet grid w


##---Class work---##

library(ggplot2)
library(PASWR) # load library needed for EPIDURALf data
EPI <- EPIDURALf # creates a shorter name
cutpoints <- quantile(EPI$BMI, probs = seq(0, 1, length = 5))
EPI$QUAR <- cut(EPI$BMI, cutpoints)
head(EPI)
#
bp <- ggplot(data = EPI, aes(x = cm, y = kg, color = Treatment))
bp
bp + geom_smooth(se = FALSE, size = 3)
bp + facet_grid(Treatment~QUAR) + geom_smooth()
bp + geom_boxplot() + facet_grid(Treatment~QUAR)

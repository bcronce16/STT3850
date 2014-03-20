head(quine)
str(quine)


maleDays <- quine$Days[quine$Sex == "M"] ## gets number of male days
femaleDays <- quine$Days[quine$Sex == "F"] ## gets numbers of female days

mean(maleDays)
mean(femaleDays)

##-----------------------------------------------------------------

maleDaysSlow <- quine$Days[quine$Sex == "M" & quine$Lrn == "SL"] ## gets number of male days AND number of male slow learners
femaleDaysSlow <- quine$Days[quine$Sex == "F" & quine$Lrn == "SL"] ## gets numbers of female days AND number of female slow learners

mean(maleDaysSlow)
mean(femaleDaysSlow)

##-----------------------------------------------------------------

maleDaysSlow <- quine$Days[quine$Sex == "M" | quine$Lrn == "SL"] ## gets number of male days OR number of male slow learners
femaleDaysSlow <- quine$Days[quine$Sex == "F" | quine$Lrn == "SL"] ## gets numbers of female days OR number of female slow learners

mean(maleDaysSlow)
mean(femaleDaysSlow)

##-----------------------------------------------------------------

tapply(quine$Days, quine$Sex, mean) ## uses tapply to get average number of days missed based on the sex
tapply(quine$Days, list(quine$Sex, quine$Lrn), mean) ## uses tapply to do the same thing as above
tapply(quine$Days, list(quine$Sex, quine$Lrn), median)

##-----------------------------------------------------------------

hist(maleDaysSlow) ## makes chart based on maleDaysSlow

## edits the look of the chart
hist(maleDaysSlow, main = "Histogram of Days Missed \n for Male Slow Learners", 
     xlab = "Days Missed", 
     col = "blue")

##-----------------------------------------------------------------

maleDaysSlow <- quine$Days[quine$Sex == "M" & quine$Lrn == "SL"] ## gets number of male days AND number of male slow learners
femaleDaysSlow <- quine$Days[quine$Sex == "F" & quine$Lrn == "SL"] ## gets numbers of female days AND number of female slow learners
plot(density(maleDaysSlow)) ## graphs maleDaysSlow

##-----------------------------------------------------------------

boxplot(maleDaysSlow) ## creates a box plot
boxplot(maleDaysSlow, horizontal = TRUE) ## creates a horizontal box plot

boxplot(maleDaysSlow, horizontal = TRUE, col = "red", main = " Boxplot of UGH!", xlab = "Days Missed") ## edits the look of the plot

##-----------------------------------------------------------------

T1 <- table(quine$Lrn, quine$Sex)
barplot(T1, legend = TRUE, beside = TRUE, col = c("green", "yellow")) ## creates an edited bar plot

##-----------------------------------------------------------------

library(lattice) ## must load or install
histogram(~Days, data = quine) ## histogram based on days missed
histogram(~Days|Sex, data = quine) ## histogram based on days and sex
histogram(~Days|Sex*Lrn, data = quine) ## histogram based on days and sex and type of learner
histogram(~Days|Sex*Age, data = quine, layout = c(4, 2)) ## histogram based on days, sex, age and changes the layout (4 colums, 2 rows)

##-----------------------------------------------------------------

bwplot(Sex~Days, data = quine) ## box and Wisker plot, conditioned on days
bwplot(Sex~Days|Lrn, data = quine) ## box and Wisker plot conditioned on learner status

##-----------------------------------------------------------------

library(e1071)
library(class)
library(MASS)
library(lattice)
library(PASWR) ## must load or install

?EPIDURALf
head(EPIDURALf) ## shows top of EPIDURALf table
xyplot(kg~cm, data = EPIDURALf) ## creates scatter plot based on EPIDURALf data
xyplot(kg~cm|Treatment*Ease, data = EPIDURALf, type = c("p", "r")) ## creates scatter plot based on EPIDURALf data (p = points, r = regression line)

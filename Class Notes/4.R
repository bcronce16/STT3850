set.seed(13)
rolls <- sample(1:6, 60, replace = TRUE)
rollsTable <- table(rolls)
head(rollsTable)


OBS <- as.vector(table(rolls))
OBS # observed value

EXP <- rep(10,6) # expected value

X2 <- sum((OBS - EXP)^2 / EXP)
X2

pvalue <- pchisq(X2, 5, lower = FALSE)

# if small p value then you reject the null hypothesis

#----------------------------------------------------------------------

set.seed(13)
stuff <- rnorm(100, 100, 10) 

qs <- qnorm(c(0, .2, .4, .6, .8, 1), 100, 10)
qs

OB <- cut(stuff, breaks = qs)
T1 <- table(OB)

OBS <- as.vector(T1)
OBS
EXP <- rep(20, 5)

X2 <- sum((OBS - EXP)^2 / EXP)
X2

pvalue <- pchisq(X2, 4, lower = FALSE)
pvalue

#----------------------------------------------------------------------

set.seed(13)
stuff <- rnorm(100, 100, 10) 

xbar <- mean(stuff) # mean
sd <- sd(stuff) # standard deviation

c(xbar, sd)

qs <- qnorm(seq(0, 1, by = .1), xbar, sd) # sets up breaks
qs

ob <- cut(stuff, breaks = qs)

T1 <- table(ob)

observed <- as.vector(T1) # observed values
expected <- rep(10, 10) # expected value

X2 <- sum((observed - expected)^2 / expected)
X2

pvalue <- pchisq(X2, 7, lower = FALSE) # 7 degrees of freedom
pvalue

#---------------------------------------------------------------------
## Number 23 - Chapter 3

stuff <- c(16.21, 16.96, 17.07, 17.81, 19.66, 21.16, 21.95, 22.76, 23.81, 23.94,
  24.12, 24.26, 25.10, 25.15, 25.22, 25.47, 25.62, 25.91, 27.34, 27.51,
  28.05, 28.67, 28.76, 28.89, 28.93, 29.45, 29.54, 29.64, 30.38, 30.60,
  31.49, 31.52, 32.25, 32.26, 32.40, 32.52, 32.54, 32.66, 33.01, 33.02,
  33.91, 34.32, 34.83, 34.88, 34.93, 35.05, 35.33, 35.84, 36.18, 36.33,
  37.27, 37.84, 38.24, 38.33, 38.42, 38.74, 38.83, 40.87, 41.77, 43.91)

xbar <- mean(stuff) # mean
sd <- sd(stuff) # standard deviation

qs <- qnorm(seq(0, 1, by = .2), xbar, sd) # sets up breaks
qs

ob <- cut(stuff, breaks = qs)

T1 <- table(ob)

observed <- as.vector(T1) # observed values
expected <- rep(12, 12) # expected value

X2 <- sum((observed - expected)^2 / expected)
X2

pvalue <- pchisq(X2, 7, lower = FALSE) # 7 degrees of freedom
pvalue
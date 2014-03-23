### Description: Chapter 4 Excercises
### @author      Bradley Cronce
### @version     3/22/2014
### Problems 2, 5, 12, 13, 14, 15, 16, 21 

## Problem 2

## Problem 12 -- A friend claims she has drawn a random sample of size 30 from the exponential
##               distribution with lambda = 1/10. The mean of her sample is 12.

  # Part (a) -- What is the expected value of a sample mean?

  # Part (b) -- Run a simulation by drawing 1000 random samples, each of size 30, 
  #             from EXP(1/10) and then compute the mean. What proportion of the
  #             sample means are as large as or larger than 12?
  #
  means <- numeric(1000) # space for results (vector of 0's)

  for (i in 1:1000) {
  
    x <- rexp(30, rate = 1/10) # draw random sample of size 30
    means[i] <- mean(x) # compute mean, save in position i
  
  }
  hist(means)

  # Part (c) -- Is a mean of 12 unusual for a sample of size 30 fomr Exp(1/10)?
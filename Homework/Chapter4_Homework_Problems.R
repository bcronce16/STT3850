### Description: Chapter 4 Excercises
### @author      Bradley Cronce
### @version     3/22/2014 



## Problem 2 -- Consider the population [3, 6, 7, 9, 11, 14]. For samples of size 3 without replacement,
##              find (and plot) the sampling distribution of the minimum. What is the mean of the 
##              sampling distribution? The statistic is an estimate of some parameter -- what is
##              the value of that parameter?

                        population <- c(3, 6, 7, 11, 14)
                        population

#--------------------------------------------------------------------------------------------------------

## Problem 5 -- Let X1, X2,..., Xn be a random sample from some distribution and suppose
##              Y = T(X1, X2,..., Xn) is a statistic. Suppose the sampling distribution of Y
##              pdf f(y) = (3/8)y^2 for 0 <= y <= 2. Find P(0 <= Y <= 1/5).

#--------------------------------------------------------------------------------------------------------

## Problem 12 -- A friend claims she has drawn a random sample of size 30 from the exponential
##               distribution with lambda = 1/10. The mean of her sample is 12.

      # Part (a) -- What is the expected value of a sample mean?

                        lambda <- (1 / 10)
                        EXP <- (1 / lambda)
                        EXP # 10
      
      #                 **ANSWER** Expected = 10

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
                        
                        Proportion <- mean(means >= 12)
                        Proportion # 0.137
 
      # Part (c) -- Is a mean of 12 unusual for a sample of size 30 fomr Exp(1/10)?
                        
      #          **ANSWER:** No, 12 is fairly uncommon, it looks from the histogram that the
      #                      most common means are between 8 and 12; however, according to the
      #                      proportion, a mean of 12 or larger only occurs 13% of the time.
  
#--------------------------------------------------------------------------------------------------------  
  
## Problem 13 -- Let X1, X2, ..., X10 ~ N(20, 8^2) and Y1, Y2, ..., Y15 ~ N(16, 7^2). Let
##               W = X' + Y'.

      # Part (a) -- Give the exact sampling distribution of W.
                        
      #                 E[x' + y'] = E[x'] + E[y']
                        EXP <- 20 + 16
                        EXP
                        
      #                 V[X' + y'] = V[x'] + V[y']
                        VAR <-
                        VAR
                        
      #                 ** ANSWER: N(36, )

      # Part (b) -- Simulate the sampling distribution in R and plot your results. Check
      #             that the simulated mean and standard error are close to the theoretical
      #             mean and the standard error.
                        
                        W <- numeric(1000)
                        
                        for (i in 1:1000) {
                          
                            x <- rnorm(10, 20, 8)
                            y <- rnorm(15, 16, 7)
                            W[i] <- mean(x) + mean(y)
                            
                        }
                        

      # Part (c) -- Use your simulation to find P(W < 40). Calculate an exact answer and
      #             compare.

      #                __________________________________________________________
      #               |                                                          |
      #               |  W <- numeric(1000)                                      |
      #               |  for (i in 1:1000) {                                     |
      #               |                                                          |
      #               |     x <- rnorm(10, 20, 8)      # draw 10 from N(20, 8^2) |
      #               |     y <- rnorm(15, 16, 7)      # draw 15 from N(16, 7^2) |
      #               |     W[i] <- mean(x) + mean(y)  # save sum of means       |
      #               |  }                                                       |   
      #               |                                                          |
      #               |  hist(W)                                                 |   
      #               |  mean(W < 40)                                            |
      #               |__________________________________________________________|
                        
                        EXACTP <- pnorm(40, 36, ) 
                        
                        SIMULATEDP <- mean(W < 40)
                        SIMULATEDP

#-------------------------------------------------------------------------------------------------------- 

## Problem 14 -- Let X1, X2, ..., X9 ~ N(7, 3^2) and Y1, Y2, ..., Y12 ~ N(10, 5^2). Let
##               W = x' - Y'.

      # Part (a) -- Give the exact sampling distribution of W.
                        
      #                 E[x' - y'] = E[x'] - E[y']
                        EXP <- 7 - 10
                        EXP
                        
      #                 V[X' - y'] = V[x'] - V[y']
                        VAR <-
                        VAR
                        
      #                 ** ANSWER: N(-3, )

      # Part (b) -- Simulate the sampling distribution of W in R and plot your results. (adapt
      #             code from the previous excercise). Check that the simulated mean and standard 
      #             error are close to the theoretical mean and the standard error.
                        
                        W <- numeric(1000)
                        
                        for (i in 1:1000) {
                          
                          x <- rnorm(9, 7, 3)
                          y <- rnorm(12, 10, 5)
                          W[i] <- mean(x) - mean(y)
                          
                        }

      # Part (c) -- Use your simulation to find P(W < -1.5). Calculate an exact answer and
      #             compare.
                        
                        EXACTP <- pnorm(-1.5, -3, )
                          
                        SIMULATEDP <- mean(W < -1.5)
                        SIMULATEDP

#-------------------------------------------------------------------------------------------------------- 
     
## Problem 15 -- Let X1, X2, ..., Xn be a random sample from N(0, 1). Let
##               W = X(1 to 2) + X(2 to 2) + ... + X(n to 2). Describe the 
##               sampling distribution of W by running a simulation, using n = 2.
##               What is the mean and variance of the sampling distribution of W?
##               Repeat using n = 4, n = 5. What observation or conjectures do you
##               have for general n?
                        
#-------------------------------------------------------------------------------------------------------- 
                        
## Problem 16 -- Let X be a uniform random variable on the interval [40, 60] and Y a uniform
##               random variable on [45, 80]. Assume that X and Y are independent.
                        
      # Part (a) -- Compute the expected value and variance of X + Y (see Theorem B.7).
                        
      # Part (b) -- The following code simulates the sampling distribution of X + Y:
                        
      #           _______________________________________________________________
      #          |                                                               |
      #          | X <- runif(1000, 40, 60) # Draw 1000 values from Unif[40, 60] |
      #          | Y <- runif(1000, 45, 80) # Draw 1000 values from Unif[45, 80] |
      #          | total <- X + Y           # Add them coordinate-wise           |
      #          | hist(total)              # Distribution of the sums           |
      #          |_______________________________________________________________|
      #
      #             Describe the graph of the distribution of X + Y. Compute the mean and 
      #             the varience of the sampling distribution (i.e. of total) and compare
      #             this to the theoretical mean and varience.
                        
      # Part (c) -- Suppose the time (in minutes) Jack takes to compute his statistics 
      #             homeowrk is Unif[40, 60] and the time Jill takes is Unif[45, 80]. 
      #             Assume they work independently. One day the announce that their total
      #             time to finish an assignment was less than 90 mins. How likely is this?
      #             (Use the simulated sampling distribution in part (b)).
                        
#-------------------------------------------------------------------------------------------------------- 
                        
## Problem 17-- Let X1, X2, ..., X20 ~ EXP(2). Let X = sumation of (i = 1 to 20) Xi.
                
      # Part (a) -- Simulate the sampling distribution of X in R.
                        
      # Part (b) -- From your simulation, find E[X] and Var[X].
                        
      # Part (c) -- From your simulation, find P(X <= 10).
                        
#--------------------------------------------------------------------------------------------------------
                        
## Problem 21 -- Let X1, X2 ~ F with corresponding pdf f(x) = 2 / x^2, 
##               1 <= x <= 2.
                        
      # Part (a) -- Find the pdf of Xmax.
                        
      # Part (b) -- Find the expected value of Xmax.
                        
#--------------------------------------------------------------------------------------------------------
                        
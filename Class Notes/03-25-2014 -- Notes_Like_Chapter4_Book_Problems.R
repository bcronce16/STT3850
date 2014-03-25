
#***  ' means bar over top the letter

##  1) Let X1, X2, ..., X9 ~N(20, 9), Y1, Y2, ...., Y16 ~ N(16, 4), 
##     and Z1, Z2, ..., Z25 ~ N(15, 5). Let W2 = X' + Y', W2 = 4X - 2Y
##     W3 = 2X' - 3Y' + z'

#      a) What is the exact distribution of W1?

#             E[x' + y'] = E[x'] + E[y']
              EXPW1 <- 20 + 16
              EXPW1

#             V[X' + y'] = V[x'] + V[y']
              VARW1 <- ((9^2)/9) + ((4^2)/16)
              VARW2
          
#             ** ANSWER: N(36, sqrt(10)) **          

#      b) P(W1 < 33) = ____
            
              probW1 <- pnorm(33, 36, sqrt(10))
              probW1

#      c) Give the exact distribution of W2
              
#             E[4x - 2y] = E[4x] - E[2y]
              EXPW2 <- 4 * 20 - 2 * 16
              EXPW2 # 48
              
#             V[W2] = V[4X - 2Y]              
#             4^2 * V[x] + 2^2 * V[4]
              VARW2 <- 4^2 * 9^2 + 2^2 * 4^2
              VARW2 # 1360

#             ** ANSWER: N(48, sqrt(1360)) **  
              
#      d) P(0 < W2 < 64) = ____
              
              a <- pnorm(0, 48, sqrt(1360))
              b <- pnorm(64, 48, sqrt(1360))
              probW2 <- b - a
              probW2

#      e) What is the exact distribution of W3?
              
              EXPW3 # 8
              
#             V[W3] = (2^2 * V[x']) + (3^2 * V[y']) + V[z']
              VARW3 <- (2^2 * ((9^2)/9)) + (3^2 * ((4^2)/16)) + ((5^2)/25)
              VARW3 # 46
              
#             ** ANSWER: N(8, sqrt(46)) **

#      f) P(W3 <= q) = 0.05 => q = ?

              probW3 <- qnorm(.05 ,8, sqrt(46))
              probW3 # -3.16

#      g) Simulate the sampling distribution of W1. Use a seed of 13, and
#         create 10,000 samples. Answer b), c), and d) based om your
#         simulation. How close is your simulation to the theoritical answers?



##  2) A friend claims that she has drawn a random sample of size 24
##     from a uniform distribution with a = 0, b = 6.

#      a) What is the expected value of the sample mean?

#      b) What is the variance of the sample mean?

#      c) What is the standard deviation of the sample mean?


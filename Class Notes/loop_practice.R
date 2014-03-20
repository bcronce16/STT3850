sample(1:6, size = 2, replace = TRUE) ## Generates two random numbers 1 - 6

##------------------------------------------------------------------------

mean(sample(1:6, size = 2, replace = TRUE)) ## Takes mean of the two numbers that sample generates

##------------------------------------------------------------------------

N <- 10000 ## Variable that holds 10000
ans <- numeric(N) ## Creates vector size 10000

for(i in 1:N) { ## loop that runs 10000 times
  
  ans[i] <- mean(sample(1:6, size = 2, replace = TRUE)) ## Stores the mean in index i in the ans vector (like an array)
    
}

table(ans) ## Display results in a table

##------------------------------------------------------------------------

sum.a <- 0 ## Variable to hold the sum
vec <- c(10, 20, 30) ## Vector that holds th numbers to be added

for(i in 1:3) {
  
  sum.a <- sum.a + vec[i] ## Adds the numbers in the vec vector and sets it to sum.a
  
}
print(sum.a) ## Prints the sum

##-------------------------------------------------------------------------

seq(0, 100, by = 5) ## Generates numbers 0 - 100 counting by 5

##-------------------------------------------------------------------------

for(i in seq(0, 100, by = 5)) {
  
  print(c(i, (5/9 * (i - 32)))) ## Prints i, then the value of i after running it through the equation
    
}

##-------------------------------------------------------------------------

i <- 0
a <- 0
n <- 50

while(i < n) {
  
  i <- i + 1
  a <- i + a
    
}
print(a)

##------------------------------------------------------------------------- both of these do the same thing (while and repeat)

i <- 0
a <- 0
n <- 50

repeat { 

  i <- i + 1
  a <- i + a
  
  if( i == n)
    break
  
}
print(a)

##------------------------------------------------------------------------

N <- 10000
N2mat <- matrix(0, N, 2) ## Creates a matrix [10000 X 2], filled with 0's
dim(N2mat)

##------------------------------------------------------------------------

N <- 10000
N2mat < matrix(0, N, 2)
i <- 1

while(i <= N) { ## Loop to fill the matrix row by row with two random numbers (1 through 6)
  
  N2mat[i, ] <- sample(1:6, size = 2, replace = TRUE)
  i <- i + 1
  
}
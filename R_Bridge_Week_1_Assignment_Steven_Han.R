# Steven Han - steven.han@nbcuni.com
# R Bridge - Week 1 Assignment

# Question 1: Write a loop that calculates 12-factorial.

# While loop
factorial <- i <- 12
while(i > 1)
{
    factorial <- factorial * (i - 1)
    i <- i - 1
}
factorial

# Recursive function
factorial <- function(x)
{
    if(x == 0)
    {
        return(1)
    }
    else return(x * factorial(x - 1))
}
factorial(12)

# Question 2: Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.

# Vector Multiplication
(num_vector <- 4:10 * 5)

# Seq function
(seq(20, 50, 5))

# While loop
start <- 20
end <- 50
increment <- 5
index <- 1
while(start <= end)
{
    num_vector[index] = start
    start <- start + increment
    index <- index + 1
}
as.numeric(num_vector)

# Question 3: Show how to take a trio of input numbers a, b, and c and implement the quadratic equation

quadratic <- function(a, b, c){

    discr <- (b ^ 2) - (4 * a * c)
    denom <- 2 * a
    num <- -1 * b
    
    if(discr == 0 && denom != 0)
    {
        root1 <- (num + sqrt(discr)) / denom
        cat("There is one solution:", root1)
    }else if(discr > 0 && denom != 0)
    {
        root1 <- (num + sqrt(discr)) / denom
        root2 <- (num - sqrt(discr)) / denom
        cat("There are two solutions:", root1, ", ", root2)
    }else if(discr < 0 && denom != 0)
    {
        root1 <- (num + sqrt(as.complex(discr)) / denom)
        root2 <- (num - sqrt(as.complex(discr)) / denom)
        cat("There are two imaginary solutions:", root1, ",", root2)
    }else
    {
        print("There is no solution")
    }
}
##################################
# Virginie Galais
# Introduction to R Rscript
##################################

# clear data
rm(list = ls())

##################################
#### Getting Help and Support ####
##################################
# command for suport facilities
help()
?
  #help(function) is the same as ?function
help.search()
??
  #help.search("function") is the same as ??function
help.start()

#########################
#### Operators in R #####
#########################

### Assignment Operators
x <- 2
x
24 -> z #same as above
y=26    #same as above

vec1  <- 3:6 #assign a sequence of value
vec11 <- c(3,4,5,6) #same as above, but allow to select the values we want (not necessary a sequence)
vec2  <- 12:15

### Arithmetic Operators
3 + 5
18 - 7
9 * 2
24/8
6^2

a <- 9
b <- 3

a + b
a - b
a * b
calc1  <- (a + b)/(a - b)
calc1
calc2  <- (a + b)^b/(a * b)
calc2

#if vectors does not have the same lenght
u <- c(6,9,2)
v <- c(2,3,-1)
w <- c(2,1)

u+w
u-v

#Matrix
matA <-   matrix(c(5,2, 4,3), nrow = 2, ncol = 2)
matA
matB  <-   matrix(c(1,6, 1,-1), nrow = 2, ncol = 2,byrow = TRUE)
matB
matC  <-   matA + matB
matC
matD  <-   matA - matB
matD
  # For matrix multiplication, the command%*%is used
  # using*performs element-wisemultiplication
matE  <-   matA * matB
matE
matF  <-   matA %*% matB
matF

##############################
#### Relational Operators ####
##############################
#Relational operators are used to establish the relation between two objects
4 > 5
4 < 5
4 > 4
4 < 4
4  >= 4
4  <= 4

#eg
x <- 3
y <- 6

y == x + 3
y != x + 3 #!= means not equal to
x != y - x

  #same is possible with matrix
matA != matB
matA  >= matC
matE == matF
matE  <= matC

##########################
#### ogical Operators ####
##########################
seq (from =2, to =100, by = 2)
seq(2, 100, 2)
seq(to =100, by =2, from =2)
x <-2
install.packages("dplyr")
library(dplyr)
class <- data.frame( names = c( "John", "Sally","Brad", "Anna"),
                     heights = c(68, 63, 71, 72))
mean(class$heights)
names<- c( "John", "Sally","Brad", "Anna")
names
names
typeof(names)
my_numbers <- c(12.5, 13.98765,pi)
typeof(my_numbers)
my_ints_2 <- c(1L, 2L, 3L)
typeof(my_ints_2)
my logical<- c(TRUE, FALSE, TRUE )
my_logical <- c (TRUE, FALSE, TRUE)
typeof(my_logical)
heights <- c(68, 63,71,72)
classs<- data.frame(names,heights)
classs
 library(dplyr)
tibble()
my_df <- data.frame(name = c("john", "alexis", "steph", "quiera"),
              age = c(24, 44, 26, 25))
class(my_df)
my_df <- as_tibble(my_df)
my_df
class(my_df)
my_df<- tibble ( name = c ( "john", "alexis", "steph", "quiera"),
age = c(24, 44, 26, 25))
my_df
class(my_df)
my_df <- data.frame( name = c ( "john", "alexis", "steph","quiera"),
                     age_years = c(24, 44, 26, 25))
my_df <- my_df %>% mutate(age_months = age_years *12)
my_df
class$heights
heights <- c( 68, 63, 71, 72)
heights[3]
(class$heights[1] + class$heights[2] + class$heights[3] +
    class$heights[4]/4)
sum(heights)
sum(class$heights)/4
'/'(8, 4)
length(heights)
sum(class$heights) / length(class$heights)
mean(class$heights)
class$weight <- c(160,170,180,190)
mean(weight)
mean(class$weight)

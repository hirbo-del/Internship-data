a<- 3 
b<- 5
genome_size_mb <-35
round(3.14159)
args(round)
round(3.14159, digits = 2)
genome_length_mb <- 4.6
genome_length_mb/978.0
genome_length_mb <- 3000.0
genome_length_mb/978.0
genome_weight_pig <- genome_length_mb/978.0
genome_length_mb<- 100
View(genome_weight_pig)
glengths <- c( 4.6, 3000, 50000)
species <- c( "ecoli", "human", "corn")
length(glengths)
length(species)
5 * glengths
class(glengths)
class(species)
str(glengths)
str(species)
length <- c( glengths, 90)
length <- c ( 30, glengths)
args(lm)
??geom_point
dput(head(iris))
saveRDS(iris, file = "/tmp/iris.rds")
some_data <- readRDS(file = "~/Downloads/iris.rds")
sessionInfo()


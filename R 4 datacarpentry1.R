head(metadata)
str(metadata)
ten_letters[1:2]
metadata [1,2]
seq(1, 10, by = 2)
metadata [1:3, 7]
metadata [, "strain"]
metadata[, "clade"]
metadata[ , c("strain", "clade", )]
metadata[4:7, c( "strain", "clade")]
install.packages("dplyr")
library(dplyr)
select(metadata, sample,clade, cit, genome_size)
filter(metadata, cit == "plus")
metadata %>% 
  filter(cit == "plus") %>%
  select(sample,generation, clade)
meta_citplus
metadata %>%
  mutate( genome_bp = genome_size *1e6)
metadata %>%
  mutate(genome_bp = genome_size *1e6) %>%
  head
metadata %>%
  mutate(genome_bp = genome_size *1e6) %>%
  filter(!is.na(clade)) %>%
  head
metadata %>%
  group_by(cit) %>%
  summarise(n())
metadata %>%
  group_by(cit, clade) %>%
  summarise(mean_size = mean(genome_size, na.rm = TRUE))
metadata %>%
  group_by(cit, clade) %>%
  summarise(mean_size = mean(genome_size, na.rm = TRUE),
            min_generation= min(generation))
genome_size
plot(genome_size)
plot(genome_size, pch = 8)
plot(genome_size, pch = 8, main = "scatter plot of genome sizes")
hist(genome_size)
boxplot(genome_size ~ cit, metadata)
boxplot(genome_size ~ cit,metadata,col =c( "pink", "purple", "darkgrey"),
        main = "average expression differences between celltypes", ylab = "Expression")
library(ggplot2)
install.packages("ggplot2")
ggplot(metadata)
ggplot(metadata) +
  geom_point(aes(x = sample, y = genome_size))
ggplot(metadata) + 
  geom_point(aes(x = sample, y = genome_size, color = generation, shape = cit), size = rel(3.0)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggplot(metadata) +
  geom_bar(aes(x = genome_size))
ggplot(metadata) +
  geom_boxplot(aes(x = cit, y =genome_size, fill = cit)) +
  ggtitle('boxplot of genome size by citrate mutant type') +
  xlab( 'citrate mutant')+
  ylab('genome size') +
  theme(panel.grid.major = element_line(size = .5, color = "grey"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = rel(1.5)),
        axis.text = element_text(size = rel(1.25)))
pdf(" figure/boxplot.pdf")
dev.off()

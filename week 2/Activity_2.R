


#2.4 Let's Subset a data frame with Tidyverse Function
# This exercise uses the nettle data frame to explore different ways of indexing using filter() and select(). First, load in the nettle data:
nettle <- read.csv('nettle_1999_climate.csv')
head(nettle) # display first 6 rows
#Next, attempt to understand what the following commands do. Then execute them in R and see whether the output matches your expectations.
filter(nettle, Country == 'Benin')
filter(nettle, Country %in% c('Benin', 'Zaire'))
select(nettle, Langs)
filter(nettle, Country == 'Benin') %>% select(Langs)
filter(nettle, Country == 'Benin') %>%
  select(Population:MGS)
filter(nettle, Langs > 200)
filter(nettle, Langs > 200, Population < median(Population))


#2.5 Exercise: Creating a Pipeline

filter(nettle, Population < 4) %>%
  mutate(MGS_cat = ifelse(MGS < 6, 'dry', 'fertile')) %>%
  group_by(MGS_cat) %>%
  summarize(LangSum = sum(Langs))


#2.6. Plotting a Histogram of the Emotional Valence Ratings:
emo <- read_csv("warriner_2013_emotional_valence.csv")
X <- mean(emo$Val)
M <- round(X, digits=6)
X1 <- (max(emo$Val) - min(emo$Val)) * 0.68
X2 <- (max(emo$Val) - min(emo$Val)) * 0.95
ggplot(emo, aes(x = Val)) +
  geom_histogram(fill = 'grey') +
  geom_vline(aes(xintercept = M), linetype = 3, colour = "red") +
  geom_vline(aes(xintercept = X1), linetype = 2, colour = "blue") +
  geom_vline(aes(xintercept = X2), linetype = 2, colour = "blue") +
  theme_minimal()

#2.7 Plotting Density Graphs:
X <- mean(emo$Val)
M <- round(X, digits=6)
X1 <- (max(emo$Val) - min(emo$Val)) * 0.68
X2 <- (max(emo$Val) - min(emo$Val)) * 0.95
ggplot(emo, aes(x = Val)) +
  geom_density(fill = 'grey') +
  geom_vline(aes(xintercept = M), linetype = 3, colour = "red") +
  geom_vline(aes(xintercept = X1), linetype = 2, colour = "blue") +
  geom_vline(aes(xintercept = X2), linetype = 2, colour = "blue") +
  theme_minimal()

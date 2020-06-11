dategs <- read.table("C:/Users/mcmic/PycharmProjects/greenshotdate/dategs.txt", quote="\"", comment.char="")
timegs <- read.table("C:/Users/mcmic/PycharmProjects/greenshotdate/timegs.txt", quote="\"", comment.char="")


dates = as.Date(dategs$V1, format = "%Y-%m-%d")
df=data.frame(date=dates, time=timegs)

library(ggplot2)
library(tidyverse)

as_tibble(df) %>% group_by(date) %>% tally() %>%
  ggplot(aes(x = date, y = n)) +
  geom_bar(stat = "identity", fill = "green4") +
  labs(title = "Daily number of greenshot screenshots taken",
       subtitle = "May 2019 till June 2020",
       x = "Date", y = "Number of screenshots")


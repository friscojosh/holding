library(tidyverse)

holding <- read_csv("data/offensive_holding.csv") %>%
   select(teamId, TOfPen, season) %>%
   mutate(season2 = season + 1)

holding_join <- holding %>%
   inner_join(holding, by = c("season2" = "season", "teamId"))

cor(holding_join$TOfPen.y, holding_join$TOfPen.x)
cor(holding_join$TOfPen.y, holding_join$TOfPen.x)^2

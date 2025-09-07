library(tidyverse)
library(here)


tv_hours_table <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarize(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write.csv(tv_hours_table, here("TV_Hours_by_Marital.csv")) 

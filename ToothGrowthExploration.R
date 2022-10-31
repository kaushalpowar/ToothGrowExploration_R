data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")

filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)

arrange(filtered_tg, len)

#Using pipe operation
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T),.group = "drop")

View(filtered_toothgrowth)
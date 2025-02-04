
library(tidyverse)


df <- read_csv("Data/example_dataset.csv") |> 
  filter(indicator == "TX_CURR",
         period == "2024-12-20") |> 
  group_by(partner) |> 
  summarise(value = sum(value, na.rm = TRUE), .groups = "drop")

df |> write_csv("Data/ggplot_example.csv",
                na = "")

df <- read_csv("Data/ggplot_example.csv")

df |> 
  ggplot(aes(x = fct_reorder(partner, value), y = value)) +
  geom_col()
  






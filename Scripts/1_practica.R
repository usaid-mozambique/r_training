
# This analysis is to try to understand why sofala has higher mortality rates than the other provinces
# for ex

library(tidyverse)

df <- read_csv("Data/example_dataset.csv")

df1 <- df |> 
  filter(snu == "Sofala") |>
  mutate(pais = "Mocambique")

df1 |> 
  write_csv("Desktop/example_processed.csv")

View(df)
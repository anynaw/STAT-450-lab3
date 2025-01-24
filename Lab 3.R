# Run this to load all necessary libraries
library(tidyverse)
# install.packages("palmerpenguins") # Run this if you can't load the palmerpenguins library 
library(palmerpenguins)
pgs <- penguins %>% drop_na
head(pgs)
pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species),
             size = 2, alpha = 0.7) +
  labs(x = "Bill Length (mm)",
       y = "Bill Depth (mm)",
       color = "Species")

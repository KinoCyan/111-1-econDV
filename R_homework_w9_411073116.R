library(ggplot2)
library(ggridges)
#library(tidyverse)
#library(ggthemes)  # for a mapping theme
#library(ggalt)  # for custom map projections
#library(ggrepel)  # for annotations
#library(viridis)  # for nice colours
#theme_set(theme_minimal())

googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1sieW8RDodRjU8VopqAE1EfsIYh0tJk7ef0WcPxoYIxQ/edit?usp=sharing",
  sheet="sheet1"
) -> data1

ggplot(data1, 
       aes(x = salaries, y = industry ,fill = factor(stat(quantile)))) +
    stat_density_ridges(
    geom = "density_ridges_gradient", calc_ecdf = TRUE,
    quantiles = 4, quantile_lines = TRUE
  ) +
  labs(x= "各產業公司的平均薪水(單位：萬)"  , title = "台灣產業平均薪水最高四產業之機率密布分配圖")+
  scale_fill_viridis_d(name = "Quartiles")

ggplot(data1, aes(x = salaries, y = industry , fill = industry)) +
  geom_density_ridges(
    aes(point_color = industry, point_fill = industry, point_shape = industry),
    alpha = .2, point_alpha = 1, jittered_points = TRUE
  ) +
  labs(x= "各產業公司的平均薪水(單位：萬)"  , title = "台灣產業平均薪水最高四產業之機率密布分配圖")+
  scale_point_color_hue(l = 40) +
  scale_discrete_manual(aesthetics = "point_shape", values = c(21, 22, 23, 24))


ggplot(data1, aes(x = salaries, y = industry, fill = stat(x))) +
  geom_density_ridges_gradient() +
  scale_fill_viridis_c(name = "薪水程度", option = "H")+
  labs(x= "各產業公司的平均薪水(單位：萬)" ,y = "\n產業別" , title = "台灣產業平均薪水最高四產業之機率密布分配圖")
  


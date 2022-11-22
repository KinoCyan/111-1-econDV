library(ggplot2)
library(ggridges)

ggplot(data1, aes(x = salaries, y = industry, fill = stat(x))) +
  geom_density_ridges_gradient() +
  scale_fill_viridis_c(name = "薪水程度", option = "H")+
  labs(x= "各產業公司的平均薪水(單位：萬)" ,y = "\n產業別" , title = "台灣產業平均薪水最高四產業之機率密布分配圖")

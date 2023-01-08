library(ggplot2)
library(ggridges)

googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1gaG-rA210IhHahQworJuYhlCF9sdXOE48MA8zZ9mlw0/edit?usp=sharing",
  sheet="sheet_other"
) -> data3

ggplot(data = data3 ,aes(x = month , y = populations)) +
  geom_line(size = 1.2 ,colour = 'skyblue')+
  geom_point(size = 2.2  ,colour = 'blue')+
  labs(x= "Year ( 民國 )" ,y = "Population in Hsinchu ( in thousands )" , title = "近十年新竹市人口變化趨勢圖",
       subtitle = "人口單位:(千)",
       caption = "資料來源：政府資料開放平台")

library(ggplot2)
library(ggridges)

googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1gaG-rA210IhHahQworJuYhlCF9sdXOE48MA8zZ9mlw0/edit?usp=sharing",
  sheet="sheet1"
) -> data2

ggplot(data2, aes(x=country, y=scores, fill=kinds)) +
  geom_bar(stat="identity")+
  ggtitle("2022世界30個國家的幸福分數細項累積","資料來源：https://worldhappiness.report/")+
  scale_fill_brewer(palette="Accent")+
  theme_minimal()+
  coord_flip()


  
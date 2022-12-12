library(ggplot2)
library(ggridges)

googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1gaG-rA210IhHahQworJuYhlCF9sdXOE48MA8zZ9mlw0/edit?usp=sharing",
  sheet="sheet1"
) -> data2

ggplot(data2, aes(x=country, y=score, fill=kinds)) +
  geom_bar(stat="identity")+
  geom_text(aes(y=score_acc, label=score), vjust=1.6, 
            color="white", size=3.5)+
  scale_fill_brewer(palette="Paired")+
  theme_minimal()+
  coord_flip()

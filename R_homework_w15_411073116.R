library(ggplot2)
library(ggridges)
library(reshape2)

googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1gaG-rA210IhHahQworJuYhlCF9sdXOE48MA8zZ9mlw0/edit?usp=sharing",
  sheet="sheet15"
) -> data2

mydata <- melt(data2,id='year')
#View(mydata)
colnames(mydata) <- c('year' ,'type' ,'value')
ggplot(data = mydata ,aes(x = year , y = value ,group = type , fill = type)) +
  geom_line()+
  geom_area(colour = 'black', size =0.8)+
  labs(x= "Year ( 民國 )" ,y = "Amount ( in 10 billion )" , title = "民國80年至110年的儲蓄/投資金額與剩餘可支配所得",
       subtitle = "金額單位:(百億)",
       caption = "資料來源：總體統計資料庫")
                       
                    
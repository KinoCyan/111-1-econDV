data0=data.frame(
  x=c(1, 2, 3, 4),
  y=c(2, 3, 6, 7),
  alpha_stroke=c(1,2,1,2)
)

ggplot(
  data=data0
)+
  geom_point(
    mapping = aes(x=x,y=y,
        stroke=alpha_stroke,
        alpha=alpha_stroke),
    fill="green",
    size=1,
    color="black"
  )


my1 <- ts(data1, start=c(2020, 1, 22), frequency = 365)
autoplot(my1) +
  autolayer(meanf(my1, h=100),
            series="Mean", PI=FALSE) +
  autolayer(rwf(my1, h=100),
            series="Naïve", PI=FALSE) +
  autolayer(rwf(my1, drift=TRUE, h=100),
            series="Drift", PI=FALSE) +
  ggtitle("Covid-19 Confirmed Cases") +
  xlab("Date") + ylab("Confirmed Cases") +
  guides(colour=guide_legend(title="Forecast"))
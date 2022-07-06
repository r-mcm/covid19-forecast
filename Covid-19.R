data1<- read.csv("uk-confirmed.csv")
my1 <- ts(data1, start=c(2020, 1, 22), frequency = 365)
data1$Date <- as.Date(data1$Date)
autoplot(my1[,2]) +
  +     ggtitle("UK Confirmed Cases") +
  +     xlab("Date") +
  +     ylab("Number of cases")
options(scipen=10)

qplot(x=my1[1], y=my1[,2],
      data=my1$confirmed, na.rm=TRUE,
      main="Covid-19 confirmed cases UK",
      xlab="Date", ylab="No. of Cases")
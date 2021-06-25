##some first steps, just to get the computer ready to do my math##
library(tidyverse)


##import CSV file with our data##
mms <- read.csv("mmset1.csv")


##Let's look at our distributions##
ggplot(data = mms, aes(x=mms$Red)) + geom_histogram(binwidth=1, fill="red", color="black") + facet_grid(mms$Type ~ .)
ggplot(data = mms, aes(x=mms$Orange)) + geom_histogram(binwidth=1, fill="orange", color="black") + facet_grid(mms$Type ~ .)
ggplot(data = mms, aes(x=mms$Yellow)) + geom_histogram(binwidth=1, fill="yellow", color="black") + facet_grid(mms$Type ~ .)
ggplot(data = mms, aes(x=mms$Green)) + geom_histogram(binwidth=1, fill="Green", color="black") + facet_grid(mms$Type ~ .)
ggplot(data = mms, aes(x=mms$Blue)) + geom_histogram(binwidth=1, fill="blue", color="black") + facet_grid(mms$Type ~ .)
ggplot(data = mms, aes(x=mms$Brown)) + geom_histogram(binwidth=1, fill="brown", color="black") + facet_grid(mms$Type ~ .)



##Let's see if the difference is statistically signficant##
t.test(Red~Type, mms)
t.test(Orange~Type, mms)
t.test(Yellow~Type, mms)
t.test(Green~Type, mms)
t.test(Blue~Type, mms)
t.test(Brown~Type, mms)


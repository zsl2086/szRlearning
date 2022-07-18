#install required packages
install.packages(c("haven","sas7bdat"))
install.packages("plotly")
install.packages("echarts4r")
install.packages("tidyverse")
install.packages("hflights")

library(haven)
#read the sas files:
ae <- read_sas(data_file="C:/Users/Shenglin.Zhang/adverse_1.sas7bdat")
view(ae)

#read the xpt files
aexpt <- read_xpt(file="C:/sz/OM_SDTM/ae.xpt")
view(aexpt)





library(dplyr)
data(iris)
glimpse(iris)
?iris
View(iris)
str(iris)
summary(iris)

data <- iris  %>%
  group_by(Species) %>%
  summarize(
    mean_sepal.length = mean(Sepal.Length),
    .groups = "drop"
  )
View(data)

library(ggplot2)
ggplot(data,mapping=aes(x=Species,y=mean_Sepal.Length))

library(plotly)

names(data)

?mean
?filter
?tbl_sum
data(trial)
summary(trial)
read.csv
read_csv()

dplyr: 
filter
select
group_by()
summarize()
join:left, right, full_join

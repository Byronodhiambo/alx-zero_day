#importing the dataset library
library(datasets)
#importing the iris dataset existing  in R
data("iris")

#or
install.packages("RCurl")
library(RCurl)
#gettint the github raw dataset as csv
iris = read.csv(text = getURL("https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv"))

#viewing my data
View(iris)
head(iris,10)
tail(iris)
iris$sepal_length

#reassigning columns
species = iris$species

#a summary statistics of my data
summary(iris)
summary(iris$sepal_length)
summary(iris$species)

#check if there are empty cells
sum(is.na(iris))


#skimr extends the summary function
install.packages("skimr")
library(skimr)
skim(iris)

#grouping data the performing skim
iris %>%
  dplyr::group_by(species) %>%
  skim()



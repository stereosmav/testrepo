library (datasets)
data(iris)
View(iris) 

unique(iris$Species)
install.packages("GGally", repos = "https://cran.r-project.org", type = "source") 

###visualisation
library(datasets)
::page{title="Load Data"}
data(mtcars)
::page{title="View first 5 rows"}
head(mtcars, 5)

?mtcars

install.packages("ggplot")
library(ggplot2)
::page{title="create a scatterplot of displacement (disp) and miles per gallon (mpg)"}

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
::page{title="create boxplot of the distribution for v-shaped and straight Engine"}
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

#visualisation 2:
install.packages("GGally")
library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))

library(datasets)
library(caret)
data(iris)

model <- train(Species ~ ., data=iris, method="rf")
predict(model,iris)

data <- data.frame(Sepal.Length=5.0,Sepal.Width=3,Petal.Length=1.4,Petal.Width=0.3)
predict(model,data)
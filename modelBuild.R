library(datasets)
library(caret)
data(iris)

#build the model
model <- train(Species ~ ., data=iris, method="rf")

#save it for later use
save(model,file="model.RData")
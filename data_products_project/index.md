---
title       : Developing Data Products
subtitle    : Iris Classifier
author      : Filipe Pais Lenfers
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

The idea was to create a iris classifier using shiny, following this steps:

1. Create a model using random forests technique over the iris dataset present in the datasets library.
2. Use the trainned model to classify iris data in a shiny application.
3. Publish the shiny application.

--- .class #id 

## How the model was built

Creating the model:

```r
library(datasets)
library(caret)
data(iris)
model <- train(Species ~ ., data=iris, method="rf")
model$results
```

```
##   mtry  Accuracy     Kappa AccuracySD    KappaSD
## 1    2 0.9480673 0.9212410 0.02767134 0.04195888
## 2    3 0.9493973 0.9232875 0.02880772 0.04360040
## 3    4 0.9496353 0.9237073 0.02660767 0.04012717
```

Save the model to use later in the shiny app:

```r
save(model,file="model.RData")
```

--- .class #id 


## How to use it

1. Access the application in this url: https://filipelenfers.shinyapps.io/dataproductsproject/ .    
2. Change the values on the sliders in the "Input data" area.    
3. See that the classification is automatically updated in the "Classification" area.    

--- .class #id 

## How to contribute

The source code of the app is avaliable at https://github.com/filipelenfers/developing-data-products-project.   
You can fork it and change the app as you like!



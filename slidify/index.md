---
title       : Testing chicken weights for different Diets
subtitle    : 
author      : Marc Matt
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
ext_widgets : {rCharts: [libraries/nvd3]}
---

## Testing chicken weights for different Diets
## Introduction

# In an experiment the effect of diet on early growth of chicks was tested. 


* There are 578 objects tested
* 4 different diets were compared

We show how the different diets affect chick weights and in which the most weight is gained.

The body weights of the chicks were measured at birth and every second day thereafter until day 20. They were also measured on day 21. There were four groups on chicks on different protein diets. 

--- .class #id 

## Testing chicken weights for different Diets
## Methods


Using simple grouping of data by age (in days) and weight (in gramms), we show the different weight gains resulting from the diets.
To show and analyse the data better there is a interactive app to show you this, which an be found here:

https://dfa126.shinyapps.io/dataproducts_project/

As seen in the application mentioned before the weight gains vary largely by diet. See summary data by example for Diets 1 and 4.

--- .class #id

## Testing chicken weights for different Diets

# Diet 1

```
##      weight           Time     
##  Min.   : 35.0   Min.   : 0.0  
##  1st Qu.: 57.8   1st Qu.: 4.0  
##  Median : 88.0   Median :10.0  
##  Mean   :102.7   Mean   :10.5  
##  3rd Qu.:136.5   3rd Qu.:16.0  
##  Max.   :305.0   Max.   :21.0
```

# Diet 4

```
##      weight           Time     
##  Min.   : 39.0   Min.   : 0.0  
##  1st Qu.: 71.2   1st Qu.: 4.5  
##  Median :129.5   Median :10.0  
##  Mean   :135.3   Mean   :10.8  
##  3rd Qu.:184.8   3rd Qu.:16.0  
##  Max.   :322.0   Max.   :21.0
```


--- .class #id

## Testing chicken weights for different Diets
# Conclusions

Chickens in Diet group 1 grow slowest, while those in Diets group 4 grow fastest. Those are max 20 gramms heavier than those given Diet 1.

# References

Crowder, M. and Hand, D. (1990), Analysis of Repeated Measures, Chapman and Hall (example 5.3)
Hand, D. and Crowder, M. (1996), Practical Longitudinal Data Analysis, Chapman and Hall (table A.2)
Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and S-PLUS, Springer. 







# **statextra**

### Statistical Tools and Convenience Functions
### **Description**
A few utilities for generating, analyzing, and plotting probabilistic/statistical data.
### **Contents**
1. _confbars_ for plotting confidence intervals on linear models
2. _roller_ for rolling any-sided dice any number of times apiece
3.  Installation
4.  Contact the author

---
### **1. confbars**
#### Add confidence bars to linear model plots
```R
confbars(model, xbounds=range(model$model[,2]), level=.95, ...)
```
+ `model` an object containing the results returned by a model fitting function (e.g., lm or glm).
+ `xbounds` left-right limits on the lines to be drawn.
+ `level` float (0,1); the confidence level, defaults to 0.95.

#### **_Example Usage_**
```R
confbars(mod1, lty=2, col='red')
```
---
### **2. roller**
#### Roll any number of dice any number of times apiece
```R
roller(sides_vec, rolls_vec)
```
+ `sides_vec` vector where each element is a number of sides of a die
+ `rolls_vec` vector of times to roll each corresponding die

#### **_Example Usage_**
```R
> roller(c(6,12,20), 1:3)
$`6-sided`
[1] 5

$`12-sided`
[1] 12 11

$`20-sided`
[1]  3 18 20
```
---

### **6. Installation**
```R
# devtools lets you install packages from GitHub:
install.packages('devtools')
library(devtools)

# then it's this simple:
install_github('vlahm/statextra')
library(statextra)
```
---
### **7. Contact the author**
Mike Vlah: 
+ vlahm13@gmail[dot]com
+ (linkedin.com/in/michaelvlah)


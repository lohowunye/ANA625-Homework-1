---
  title: "Homework"
author: "Akinyemi Fayankinnu"
date: "August 10, 2018"
output:
  pdf_document: default
html_document: default
word_document: default     
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}
insurance=read.csv('C:/Users/Akinyemi/Desktop/ANA625/insurance.csv')
```

```{r insurance}
#Dataset summary. The min, mean, max are shown for numeric variables as well as the 1st & 3rd quartiles. Count is displayed for categorical variables.
summary(insurance)

```

```{r}
#Scatterplot Matrix of all variables.
pairs(insurance)
```
```{r}
# Table showing customers by region. 
table(insurance$region)
```

```{r}
#Histogram of age
hist(insurance$age, main = "Histogram of ages (Insurance customers)", xlab = "age (years)", col = "gray")

```

```{r}
#Histogram of BMI
hist(insurance$bmi, main = "Histogram of BMI", xlab = "BMI (lb/in^2)", col = "gray")

```

```{r}
#Histogram of children
hist(insurance$children, main = "Histogram of No. of Children", xlab = "children (count)", col = "gray")

```
```{r}
#Histogram of charges
hist(insurance$charges, main = "Histogram of charges", xlab = "charges ($)", col = "gray")
```

```{r}
#plot of gender
plot(insurance [2])

```
```{r}
#plot of smokers and non-smokers
plot(insurance [5])
```

```{r}
#Plot of insurance customers by region
plot(insurance [6])
```

```{r}
#IQR for Charges
IQR(insurance$charges)

```
```{r}
#Difference of the range of insurance charges
diff(range(insurance$charges))
```

```{r}
#Boxplot of BMI
boxplot(insurance$bmi, main = "Boxplot of BMI", ylab = "BMI (lb/in^2)", col = "gray")
```

```{r}
#Boxplot of age
boxplot(insurance$age, main = "Boxplot of age", ylab = "age (years)", col = "gray")
```

```{r}
#Boxplot of no. of children
boxplot(insurance$children, main = "Boxplot of children", ylab = "Number of children", col = "gray")
```
```{r}
#Boxplot of insurance charges
boxplot(insurance$charges, main = "Boxplot of insurance charges", ylab = "charges ($)", col = "gray")
```
```{r}
#Summary of insurance charges
summary(insurance$charges)
```

```{r}
#finding correlation between numeric variables
cor(insurance[c("age", "bmi", "children", "charges")])

```
```{r}
#Scatterplot 2 - Numeric variables
pairs(insurance[c("age", "bmi", "children", "charges")])

```
```{r}
#Q-Q Plot of children.
qqnorm(insurance$children, main = "Q-Q Plot of Children", col= "brown")

```
```{r}
#Q-Q plot of BMI.
qqnorm(insurance$bmi, main = "Q-Q Plot of BMI", col= "blue")
```

```{r}
#Q-Q Plot of age
qqnorm(insurance$age, main = "Q-Q Plot of Age", col= "green")

```

```{r}
#Q-Q Plot of insurance charges
qqnorm(insurance$charges, main = "Q-Q Plot of Charges", col= "maroon")

```
```{r}
#Density plot of age.
plot(density(insurance$age))
```

```{r}
#Density plot of BMI.
plot(density(insurance$bmi))
```
```{r}
#Density plot of insurance charges.
plot(density(insurance$charges))
```
```{r}
#Standard deviation for age
sd(insurance$age,na.rm=TRUE)
```

```{r}
#Standard deviation for BMI
sd(insurance$bmi, na.rm = TRUE)
```
```{r}
#Standard deviation for number of children
sd(insurance$children)

```
```{r}
#Standard deviation for charges
sd(insurance$charges)
```
```{r}
#Attempt to fit a linear model to predict charges using all the variables.

model1 = lm(charges ~ age + children + bmi + sex + smoker + region, data = insurance)

model1

```

```{r}
#Attempt to fit a linear model using only numeric variables.

model2 = lm(charges ~ age + children + bmi, data = insurance)

model2
```






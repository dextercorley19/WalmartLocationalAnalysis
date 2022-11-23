#--------------------------------------------------------------------------------------
#R Script For DMA Analysis data
#
#Goals:
#1.
#LinReg model on weekly average sales to figure out most important variables
#LinReg Model on if sales have a big impact on revenue and where
#
#2.
#Formula creating new column containing Per Person Spending Per Week for each location
#
#--------------------------------------------------------------------------------------
#
#libraries
#install.packages("readxl")
library(readxl)
library(tidyverse)
library(ISLR)
library(yardstick)
library(plotROC)
library(rsample)
library(ggcorrplot)
library(ggridges)
library(forcats)
library(caret)
library(lindia)
library(glmnet)
library(glmnetUtils)
library(coefplot)
library(GGally)
library(corrplot)
library(knitr)
#install.packages("knitr")
rm(list = ls())
#
#
Sales_Data <- read_excel("DMA_AvgSales.xlsx")

glimpse(Sales_Data)

Sales_Data <- Sales_Data %>% 
  mutate(TypeF = factor(Type),
         StoreF = factor(Store),
         DMAF = factor(DMA),
         CountryF = factor(Country)) %>% 
  select(-Type,-Store,-DMA,-Country)

lm_mod <- lm(`Average Weekly Sales` ~ `Average Fuel Price` + `Variance of Unemployment` + 
               `Average Temperature` + Size + Area + `Population 18+` + `Household Count` + 
               `Med HHld Income` + White + 
               `African American` + Hispanic,
              data = Sales_Data)
summary(lm_mod)

lm_mod2 <- lm(`Average Weekly Sales` ~ Size + `Population 18+` + `Household Count` + 
               `Med HHld Income`,
             data = Sales_Data)
summary(lm_mod2)

DMA_Sales <- read_excel("15DMA_Final.xlsx")
glimpse(DMA_Sales)

lm_mod3 <- lm(`Average Weekly Sales(DMA)` ~ `Average Fuel Price(DMA)` + `Population 18+(DMA)` + `Household Count(DMA)` + 
              `HHlds No Vehicles (DMA)` + `Variance of Unemployment(DMA)`,
              data = DMA_Sales)
summary(lm_mod3)

#model on weekly sales data per store per week (5k+ rows) 2010-2012
weeklysales <- read_excel("5kweeklysales.xlsx")
glimpse(weeklysales)

weeklysales <- weeklysales %>% 
  mutate(StoreF = factor(Store),
         IsHolidayF = factor(IsHoliday)) %>% 
  select(-Store,-IsHoliday)
glimpse(weeklysales)

lm_mod4 <- lm(`Store Weekly Sales` ~ Temperature + 
                Fuel_Price + Unemployment + IsHolidayF, 
              data = weeklysales)
summary(lm_mod4)



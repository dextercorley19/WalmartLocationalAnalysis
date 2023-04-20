# WalmartLocationalAnalysis
## The presentation file is [Locational Analysis Presentation](/LocAnalysis_Presentation.pptx) ##
# The Other Deliverables #
** [Alteryx Workflow](/CompAnalysisWKFLO.yxmd), [R File](/DMAweeklysales.R) **


Analysis and Launch plan for Retail Startup

1. Design and communicate an analytical plan for launch of targeted retail locations – determine the best 10 markets to compete effectively against an established competitor.

The retail concept is that of a Target ‘light’ a multi-purpose home and grocery store that will compete with Wal-Mart & Target for middle income to high income households.

It is understood that competitive sales data represents either Wal-Mart or Target stores.

The goal is to identify the top 10 markets in an analytical and data driven way. Presenting the data that drove the recommendation.

1. Conduct analysis on provided datasets, seek out and analyze additional relevant datasets that can help determine launch strategy
2. Write up your analysis with a clear recommendation on which markets to choose for launch of new store.

## Data Used to Conduct Analysis

**DMA Data set (PI-18803 DMA.xlsx);**

You are provided with a demographic dataset at the DMA (Designated Market Area aka major city or metropolitan area). You can use this data to analysis the population, household, income and ethnicity of the various DMA’s as potential locations.

**MSA Excel files;**

MSA (Metropolitan Statistical Areas) are similar in nature to DMA’s (note; they are not 1 to 1 likeness, but the purposes of this analysis they should be assumed to be the same). These files provide input into consumer expenditure in major categories. **You may make a qualitative judgement on which categories (and consequently) which spend levels you believe to be the most attractive. Explain all assumptions.** It is possible that not all markets represented in the store data will be present in the MSA files. This should not automatically disqualify a market, but analysis should take place to determine if other data points could be sourced to support your decision.

**Retail Data information;**

You are provided with historical sales data for 45 competitive stores located in different major cites, some major markets have more than one store. Each store contains a number of departments, but the goal is to compare overall store performance and **determine a ranking of markets most desirable to launch in.**

In addition, the competitor runs several promotional markdown events throughout the year. These markdowns precede prominent holidays, the four largest of which are the Super Bowl, Labor Day, Thanksgiving, and Christmas. The weeks including these holidays are weighted five times higher in the evaluation than non-holiday weeks. **An optional part of the challenge presented by this analysis is modeling the effects of markdowns on these holiday weeks in the absence of complete/ideal historical data to ensure that the impact of these markdowns is accounted for in the recommendation.**

**Stores data-set with DMA.xls**

This file contains information about the 45 stores, indicating the type and size of store and location.

**Sales data-set.csv**

This is the historical training data, which covers to 2010-02-05 to 2012-11-01. Within this file you will find the following fields:

Store - the store number

Dept - the department number

Date - the week

Weekly_Sales - sales for the given department in the given store

IsHoliday - whether the week is a special holiday week

**features.csv**

This file contains additional data related to the store, department, and regional activity for the given dates. It contains the following fields:

Store - the store number

Date - the week

Temperature - average temperature in the region

Fuel_Price - cost of fuel in the region

MarkDown1-5 - anonymized data related to promotional markdowns that the competitor is running. MarkDown data is only available after Nov 2011, and is not available for all stores all the time. Any missing value is marked with an NA.

CPI - the consumer price index

Unemployment - the unemployment rate

IsHoliday - whether the week is a special holiday week

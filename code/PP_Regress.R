library(tidyverse)

getwd()

setwd("D:/Rcoursework/data")

MyDF <- read.csv("EcolArchives-E089-51-D1.csv")

# Cleaning up the environment

rm(list = ls())

# Read the data

MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv")

# Convert predator mass from milligrams to grams based on units

MyDF <- MyDF %>%

mutate(Prey.mass = ifelse(Prey.mass.unit == 'mg', Prey.mass * 1000, Prey.mass))

# Convert related columns to factors

MyDF <- MyDF %>%

  mutate(

    Type.of.feeding.interaction = as.factor(Type.of.feeding.interaction),

    Location = as.factor(Location),

    Predator.lifestage = as.factor(Predator.lifestage)

  )

# Grouping of data based on location, predation behavior and predator life stage

MyDF.subsets <- group_split(MyDF, Location, Type.of.feeding.interaction, Predator.lifestage)

# Construct linear modeling functions

lm.function <- function(data_subset) {

# Fitting linear models

model <- lm(log(Predator.mass) ~ log(Prey.mass), data = data_subset)

# Extract model coefficients and statistics

slopes <- coef(model)[2]  

intercepts <- coef(model)[1]

r2 <- summary(model)$r.squared

# F-statistic (treating possible NA values)

Fstats <- ifelse(!is.null(summary(model)$fstatistic), summary(model)$fstatistic[1], NA)

# p-values for slope coefficients (check for multiple coefficients)

pvalues <- ifelse(nrow(summary(model)$coef) > 1, summary(model)$coef[2, 4], NA)

# Create output data boxes

output <- data.frame(

  Location = data_subset$Location[[1]],  # Extraction location

  Predator.lifestage = data_subset$Predator.lifestage[[1]],  # Extraction of predator life stages

  FeedingInteraction = data_subset$Type.of.feeding.interaction[[1]],  # Extract types of predation interactions

  slope = slopes,  

  intercept = intercepts,  

  r2 = r2,  

  fstat = Fstats,  

  pvalue = pvalues  

)

  return(output)

}

# Apply the linear model function to each subset and combine the results

PP_Regress_Results <- bind_rows(lapply(MyDF.subsets, lm.function)) 
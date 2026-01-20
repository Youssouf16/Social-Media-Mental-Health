library(tidyverse)
#install.packages('tidymodels')
install.packages('tidylog')
library(glue)
library(tidymodels)
library(tidylog)
library(caret)
library(MASS)

social_media_mental_health <- read_csv("social_media_mental_health.csv")

dplyr::glimpse(social_media_mental_health)

prepdata<- social_media_mental_health%>%
  mutate(across(
    .col =where(is.character) & !User_ID,
    .fns = as.factor
  ))

# Let's consider  the variables PHQ_9 and gender

# Since you have 8,000 rows, the Shapiro-Wilk test will be extremely sensitive 
# (it will almost certainly say "Not Normal"). 
# In professional settings with large data, we rely more on the Histogram.

densityplot(prepdata$Daily_Screen_Time_Hours)
shapiro.test(prepdata$Daily_Screen_Time_Hours[1:5000])

# We can see that our data are not normaly distributed. But thanks to the size being so big, we can still proceed
#to perform our t test our our  anovo test for they are robust enough to handle this case.

### T-test on age

t.test(data=  prepdata, Daily_Screen_Time_Hours~Gender)

#From this, we can derive that there is no signifant difference beetween male and female regarding 
#the Daily_Screen_Time_Hours

### ANOVA  for other categorical variables

# User_archetype
anova1<-aov(Daily_Screen_Time_Hours~User_Archetype, data = prepdata)
summary(anova1)
post_hoc <- TukeyHSD(anova1)

# From these results, we  can see that the p values is extremly low so we keep the null 
#hypothesis : There is a significant difference between archetypes in term of daily screen time
# The group that spend the most time on screens is Hyper-Connected-Digital Minimalist with around 5h more than the average

#Primary_platform

anova2<-aov(Daily_Screen_Time_Hours~Primary_Platform, data = prepdata)
summary(anova2)
post_hoc2 <- TukeyHSD(anova2)

# FROM This we realize that there is no significant difference of which platform the user follow it does not 
#affect the time spent in other word on average users spend equal time on any of their primary platform than 
#any other individual.

0787939274


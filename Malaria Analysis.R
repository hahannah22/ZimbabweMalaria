setwd("/Users/tiahunter/Documents/DEOHS/Malaria/Malaria Data")
#getwd()

library(readstata13)
library(ggplot2)
#clear plots
dev.off()
#clear console
#ctr L

#___________________#
# Year 2013 Barplot #
#___________________#

#Read in stata data 13
malaria13 = read.dta13("2013 Zim Malaria Data.dta")
#malaria13

#Total positive malaria
malaria13 <- transform(malaria13, total_pos = pos_under5 + pos_over5)
#malaria13

#Prevalence
malaria13 <- transform(malaria13, prevalence13 = total_pos / district_pop)
#malaria13

#Cases per 100000
malaria13$casesper13 <- malaria13$prevalence13 * 100000
#malaria13

#Barplot Prevalence
district_casesper13_1 <- malaria13[malaria13$n_district == 1, "casesper13"]
district_casesper13_2 <- malaria13[malaria13$n_district == 2, "casesper13"]
district_casesper13_3 <- malaria13[malaria13$n_district == 3, "casesper13"]
district_casesper13_4 <- malaria13[malaria13$n_district == 4, "casesper13"]
district_casesper13_5 <- malaria13[malaria13$n_district == 5, "casesper13"]
district_casesper13_6 <- malaria13[malaria13$n_district == 6, "casesper13"]
district_casesper13_7 <- malaria13[malaria13$n_district == 7, "casesper13"]
district_casesper13_8 <- malaria13[malaria13$n_district == 8, "casesper13"]
district_casesper13_9 <- malaria13[malaria13$n_district == 9, "casesper13"]

district_casesper13_all <- rbind(district_prev13_1, district_prev13_2, district_prev13_3, district_prev13_4, district_prev13_5,
                           district_prev13_6, district_prev13_7, district_prev13_8, district_prev13_9)
#district_casesper13_all

week <- seq(1,53)
#week

barplot(district_casesper13_all, 
        main = "Number of 2013 Confirmed Malaria Cases per 100,000 Population",
        xlab = "Week", names.arg = c(week), 
        ylab = "Positive Malaria Cases per 100,000 Population", 
        col = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue", 
                 "royalblue", "violet","mediumvioletred"))
legend("left", legend = rownames(district_prev13_all), fill = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue",
                                                                 "royalblue", "violet","mediumvioletred"))

#___________________#
# Year 2014 Barplot #
#___________________#

malaria14 = read.dta13("2014 Zim Malaria Data.dta")
#malaria14

#Total positive malaria
malaria14 <- transform(malaria14, total_pos = pos_under5 + pos_over5)

#Prevalence
malaria14 <- transform(malaria14, prevalence14 = total_pos / district_pop)

#Cases per 100000
malaria14$casesper14 <- malaria14$prevalence14 * 100000

#Barplot Prevalence
district_casesper14_1 <- malaria14[malaria14$n_district == 1, "casesper14"]
district_casesper14_2 <- malaria14[malaria14$n_district == 2, "casesper14"]
district_casesper14_3 <- malaria14[malaria14$n_district == 3, "casesper14"]
district_casesper14_4 <- malaria14[malaria14$n_district == 4, "casesper14"]
district_casesper14_5 <- malaria14[malaria14$n_district == 5, "casesper14"]
district_casesper14_6 <- malaria14[malaria14$n_district == 6, "casesper14"]
district_casesper14_7 <- malaria14[malaria14$n_district == 7, "casesper14"]
district_casesper14_8 <- malaria14[malaria14$n_district == 8, "casesper14"]
district_casesper14_9 <- malaria14[malaria14$n_district == 9, "casesper14"]

district_casesper14_all <- rbind(district_prev14_1, district_prev14_2, district_prev14_3, district_prev14_4, district_prev14_5,
                           district_prev14_6, district_prev14_7, district_prev14_8, district_prev14_9)
#district_casesper14_all

week <- seq(1,52)
#week

barplot(district_casesper14_all, 
        main = "Number of 2014 Confirmed Malaria Cases per 100,000 Population",
        xlab = "Week", names.arg = c(week), 
        ylab = "Positive Malaria Cases per 100,000 Population", 
        col = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue", 
                 "royalblue", "violet","mediumvioletred"))
legend("right", legend = rownames(district_prev14_all), fill = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue",
  
                                                                                                                                 "royalblue", "violet","mediumvioletred"))
#___________________#
# Year 2015 Barplot #
#___________________#

malaria15 = read.dta13("2015 Zim Malaria Data.dta")
#malaria15

#Total positive malaria
malaria15 <- transform(malaria15, total_pos = pos_under5 + pos_over5)

#Prevalence
malaria15 <- transform(malaria15, prevalence15 = total_pos / district_pop)

#Cases per 100000
malaria15$casesper15 <- malaria15$prevalence15 * 100000

#Barplot Prevalence
district_casesper15_1 <- malaria15[malaria15$n_district == 1, "casesper15"]
district_casesper15_2 <- malaria15[malaria15$n_district == 2, "casesper15"]
district_casesper15_3 <- malaria15[malaria15$n_district == 3, "casesper15"]
district_casesper15_4 <- malaria15[malaria15$n_district == 4, "casesper15"]
district_casesper15_5 <- malaria15[malaria15$n_district == 5, "casesper15"]
district_casesper15_6 <- malaria15[malaria15$n_district == 6, "casesper15"]
district_casesper15_7 <- malaria15[malaria15$n_district == 7, "casesper15"]
district_casesper15_8 <- malaria15[malaria15$n_district == 8, "casesper15"]
district_casesper15_9 <- malaria15[malaria15$n_district == 9, "casesper15"]

district_casesper15_all <- rbind(district_casesper15_1, district_casesper15_2, district_casesper15_3, district_casesper15_4, district_casesper15_5,
                           district_casesper15_6, district_casesper15_7, district_casesper15_8, district_casesper15_9)
#district_casesper15_all

week <- seq(1,52)
#week

barplot(district_casesper15_all, 
        main = "Number of 2015 Confirmed Malaria Cases per 100,000 Population",
        xlab = "Week", names.arg = c(week), 
        ylab = "Positive Malaria Cases per 100,000 Population", 
        col = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue", 
                 "royalblue", "violet","mediumvioletred"))
legend("right", legend = rownames(district_casesper15_all), fill = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue",
                                                                 "royalblue", "violet","mediumvioletred"))

#___________________#
# Year 2016 Barplot #
#___________________#

malaria16 = read.dta13("2016 Zim Malaria Data.dta")
#malaria16

#Total positive malaria
malaria16 <- transform(malaria16, total_pos = pos_under5 + pos_over5)

#Prevalence
malaria16 <- transform(malaria16, prevalence16 = total_pos / district_pop)

#Cases per 100000
malaria16$casesper16 <- malaria16$prevalence16 * 100000

#Barplot Prevalence
district_casesper16_1 <- malaria16[malaria16$n_district == 1, "casesper16"]
district_casesper16_2 <- malaria16[malaria16$n_district == 2, "casesper16"]
district_casesper16_3 <- malaria16[malaria16$n_district == 3, "casesper16"]
district_casesper16_4 <- malaria16[malaria16$n_district == 4, "casesper16"]
district_casesper16_5 <- malaria16[malaria16$n_district == 5, "casesper16"]
district_casesper16_6 <- malaria16[malaria16$n_district == 6, "casesper16"]
district_casesper16_7 <- malaria16[malaria16$n_district == 7, "casesper16"]
district_casesper16_8 <- malaria16[malaria16$n_district == 8, "casesper16"]
district_casesper16_9 <- malaria16[malaria16$n_district == 9, "casesper16"]

district_casesper16_all <- rbind(district_casesper16_1, district_casesper16_2, district_casesper16_3, district_casesper16_4, district_casesper16_5,
                           district_casesper16_6, district_casesper16_7, district_casesper16_8, district_casesper16_9)
#district_casesper15_all

week <- seq(1,52)
#week

barplot(district_casesper16_all, 
        main = "Number of 2016 Confirmed Malaria Cases per 100,000 Population",
        xlab = "Week", names.arg = c(week), 
        ylab = "Positive Malaria Cases per 100,000 Population", 
        col = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue", 
                 "royalblue", "violet","mediumvioletred"))
legend("right", legend = rownames(district_casesper16_all), fill = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue",
                                                                 "royalblue", "violet","mediumvioletred"))
#___________________#
# Year 2017 Barplot #
#___________________#

malaria17 = read.dta13("2017 Zim Malaria Data.dta")
#malaria17

#Total positive malaria
malaria17 <- transform(malaria17, total_pos = pos_under5 + pos_over5)

#Prevalence
malaria17 <- transform(malaria17, prevalence17 = total_pos / district_pop)

#Cases per 100000
malaria17$casesper17 <- malaria17$prevalence17 * 100000

#Barplot Prevalence
district_casesper17_1 <- malaria17[malaria17$n_district == 1, "casesper17"]
district_casesper17_2 <- malaria17[malaria17$n_district == 2, "casesper17"]
district_casesper17_3 <- malaria17[malaria17$n_district == 3, "casesper17"]
district_casesper17_4 <- malaria17[malaria17$n_district == 4, "casesper17"]
district_casesper17_5 <- malaria17[malaria17$n_district == 5, "casesper17"]
district_casesper17_6 <- malaria17[malaria17$n_district == 6, "casesper17"]
district_casesper17_7 <- malaria17[malaria17$n_district == 7, "casesper17"]
district_casesper17_8 <- malaria17[malaria17$n_district == 8, "casesper17"]
district_casesper17_9 <- malaria17[malaria17$n_district == 9, "casesper17"]

district_casesper17_all <- rbind(district_casesper17_1, district_casesper17_2, district_casesper17_3, district_casesper17_4, district_casesper17_5,
                           district_casesper17_6, district_casesper17_7, district_casesper17_8, district_casesper17_9)
#district_casesper15_all

week <- seq(1,52)
#week

barplot(district_casesper17_all, 
        main = "Number of 2017 Confirmed Malaria Cases per 100,000 Population",
        xlab = "Week", names.arg = c(week), 
        ylab = "Positive Malaria Cases per 100,000 Population", 
        col = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue", 
                 "royalblue", "violet","mediumvioletred"))
legend("right", legend = rownames(district_casesper17_all), fill = c ("red3", "orange", "yellow1", "lightgreen", "green4","skyblue",
                                                                 "royalblue", "violet","mediumvioletred"))
#______________________________#
# Year 2013 Barplot, Pos Cases #
#______________________________#

#grouped bar plot of Malaria Cases
#http://www.sthda.com/english/wiki/add-legends-to-plots-in-r-software-the-easiest-way
#https://www.statmethods.net/graphs/bar.html

district_all <- rbind(district_1, district_2, district_3, district_4, district_5, district_6, district_7, district_8, district_9)
district_all

barplot(district_all, 
        main = "Distribution of 2013 Positive Over 5 Malaria Cases",
        xlab = "Weeks", ylab = "Number of Positive Malaria Cases", 
        col = c ("darkblue", "red", "green", "blue", "darkgreen","purple",
                 "darkgoldenrod", "deeppink","darkolivegreen1"))
legend("left", legend = rownames(district_all), fill = c ("darkblue", "red", "green", "blue", "darkgreen","purple",
                 "darkgoldenrod", "deeppink","darkolivegreen1"))


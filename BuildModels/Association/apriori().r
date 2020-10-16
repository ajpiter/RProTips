#Association or Market Basket Model using apriori()

fp.df<-read.csv(“Faceplate.csv”)

# remove first column and convert to matrix
fp.mat<-as.matrix(fp.df[, -1])

# convert the binary incidence matrix into a transactions database
fp.trans<-as(fp.mat, "transactions")

# when running apriori(), include minimum support & confidence, & target as arguments
rules <-apriori(fp.trans, parameter = list(supp = 0.2, conf = 0.5, target = "rules"))

# inspect the first six rules, sorted by their lift
inspect(head(sort(rules, by = "lift"), n = 6))

#Support: impact of the rule in terms of overall size (e.g., how many transactions are affected?)
#Lift: how efficient the rule is in finding consequents, compared to random selection (but still consider the rule with high support)
#Confidence: at what rate consequents will be found if the rule is applied (useful in determining the business or operational usefulness of a rule; e.g., whether to be worth the cost of promoting) 

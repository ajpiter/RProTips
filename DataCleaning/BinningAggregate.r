#Create bins of size 1 for RM
housing.df$RM.bin<-.bincode(housing.df$RM, c(1:9))

# .bincode(): Bin a numeric vector and return integer codes for the binning
# e.g., RM.bin=4 if 4<RM<=5; RM.bin=5 if 5<RM<=6;

#Compute the average of MEDV by (binned) RM and CHAS
aggregate(  list(MeanMEDV=housing.df$MEDV), by=list(RM=housing.df$RM.bin,CHAS=housing.df$CHAS), FUN=mean  )
# useaggregate()andlist() to tabulate counts 
# in aggregate(), use the argument by=to define the list of aggregating variables        
# and FUN=to define an aggregating function

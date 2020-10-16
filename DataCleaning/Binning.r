#Create bins of size 1 for RM
housing.df$RM.bin<-.bincode(housing.df$RM, c(1:9))

# .bincode(): Bin a numeric vector and return integer codes for the binning
# e.g., RM.bin=4 if 4<RM<=5; RM.bin=5 if 5<RM<=6;

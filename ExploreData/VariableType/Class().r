str(housing.df$REMODEL)    # str() displays structure
class(housing.df$REMODEL) # REMODEL is a factor variable (3 classes: None, Old, Recent)
class(housing.df[ ,14])   # same as above (for tracking the type of REMODEL (14th))
class(housing.df$BEDROOMS)   # BEDROOMS (9th column) is an integer variable

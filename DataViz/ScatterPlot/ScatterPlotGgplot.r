#GGPlot Cheat Sheet
# https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

#Name: Color to Highligh Variable
#Change the color of dots based on 3rd variable to describe relationship 
ggplot(data = data) + geom_point(mapping = aes(x=variablex, y=variabley, color = variablex2) 

-----

#Name: Size to Highlight Variable 
#Change the size of the dots based on 3rd variable 
ggplot(data = data) + geom_point(mapping = aes(x=variablex, y=variabley, size = variablex2) 

-----
#Name: Shape to Highlight Variable 
#Change the shape based on a 3rd variable. Note that there are only 6 shapes therefore you can only have 6 categorigories for the shape variable. 
ggplot(data = data) + geom_point(mapping = aes(x=variablex, y=variabley, shape = variablex2) 

-----
#Name: Transparency for Continuous Data 
ggplot(data = data) + geom_point(mapping = aes(x=variablex, y=variabley, alpha = variablex2) 

-----
#Name: Add a Regression Line to the Scatterplot
ggplot(data, aes(variable, variable2)) + stat_summary(fun.data= mean_cl_normal) + geom_smooth(method='lm')                             
                                 ]

#GGPlot Cheat Sheet
# https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

#Name: Specific Color ie "navy"
ggplot(data = data) + 
geom_point(mapping = aes(x=variablex, y=variabley, color = "navy") 

#Name: Color to Highligh Variable
#Change the color of dots based on 3rd variable to describe relationship 
ggplot(data = data) + 
geom_point(mapping = aes(x=variablex, y=variabley, color = variablex2) 

----- #Dot Size ----
#Name: Specific Sizes of Dots
ggplot(data = data) + 
geom_point(mapping = aes(x=variablex, y=variabley, size = 4) 
           
#Name: Size to Highlight Variable 
#Change the size of the dots based on 3rd variable 
ggplot(data = data) + 
           geom_point(mapping = aes(x=variablex, y=variabley, size = variablex2) 

----- #Dot Color -----
#Name: Shape to Highlight Variable 
#Change the shape based on a 3rd variable. Note that there are only 6 shapes therefore you can only have 6 categorigories for the shape variable. 
ggplot(data = data) + 
                      geom_point(mapping = aes(x=variablex, y=variabley, shape = variablex2) 

----- #Transparency -----
#Name: Transparency for Continuous Data 
ggplot(data = data) + 
                      geom_point(mapping = aes(x=variablex, y=variabley, alpha = variablex2) 

----- #Regression Line ----
#Name: Add a Regression Line to the Scatterplot
ggplot(data, aes(variable, variable2)) + 
                                 stat_summary(fun.data= mean_cl_normal) + 
                                 geom_smooth(method='lm') 
                                 
----- #Sort Data -----
#Name: Reorder Y Axes in descending order of X Variable 
ggplot(data, aes(x = variable, y = reorder(variable2, variable1))) + 
                                 geom_point()
                                 
----- #Axis Format & Labels -----
ggplot(data, aes(x = variable, y = reorder(variable2, variable1))) + 
                                 geom_point(color = "navy", size = 4) +
                                 scale_x_continuous(labels = scales::dollar) + 
                                 theme_minimal(base_size = 18) + 
                                 labs(x = "X Label", 
                                      y = "Y Label", 
                                      title = "Chart Title") 
                                 
#Note to remove a label or title simply set x = "" or title = ""                                 

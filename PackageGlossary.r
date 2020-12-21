#Below is a list of packages, and thier use case in R 

##### Import/Export #####
library(readr) #quickly import csv files in R 
library(kntr) #helps with r markdown files 
library(openxlsx) #Export to Excel without Java Dependencies 
library(xlsx) #Export to Excel needs Java 
library(rvest) #used for web scraping tables

##### Data Visualization #####
library(ggplot2) #used for visualization
library(lattice) #used for complex data visualization
library(car) #used for making a scatterplot matrix

##### Data Cleaning #####
library(dplyr) #used for data manipulation
library(data.table) #used to create new dataframes, great for data dictionaries 
library(rstudioapi) #library for getting RStudio version

##### Data Modeling #####
library(dummies) #create dummy variables 
library(lime) #explain outcome of black box models

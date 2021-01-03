#Documentation is important if you are multiple users are working on a project or working from multiple environments

#Find the version of R you are using 
version 

#Document packages first find the version number for the package
library(sessioninfo)
session_info(pkgs = NULL, include_base = FALSE)

#list the package version number next to the library() when you load package 
library(ggplot2) #version 3.3.2
library(plyr) #verson 1.8.6 

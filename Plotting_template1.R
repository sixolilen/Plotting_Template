# plotting Notes with GGPlot2
#1)
ggplot(data = data_available,
       mapping = aes(x = variable,
                     y = variable)) +
  geom_point()

#2)
ggplot(data = data_available)+
  geom_point(mapping = aes(x = variable,
                           y = variable))

#3)
ggplot()+
  geom_point(mapping = aes(x = variable,
                           y = variable),
             data = data = data_available)

# adding and mapping colour

ggplot(data_available)+
  geom_point(aes(x = variable,
                 y = variable,
                 colour = varaiable < 3))

#setting colour
ggplot(data_available) +
  geom_point(aes(x = variable,
                 y = variable),
             colour = 'red')

#geom_histo

ggplot(data_available) +
  geom_histogram(aes(x = variable))

# layers stacked in order of code appearance

ggplot(data_available +
         aes(x = variable, y = variable)) +
  geom_density_2d() +
  geom_point()
#faceting    
ggplot(iris_small, aes(x=Petal.Length,
                       y=Petal.Width)) +
  geom_point()+
  facet_wrap(~Species)

#lineplot
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPerCap=median(gdpPercap))
ggplot(by_year, aes(x=year,
                    y=medianGdpPerCap))+
  geom_line()+
  expand_limits(y=0)

#Histograms

ggplot(iris_small, aes(x=Petal.Length))+
  geom_histogram()

# Box plot
ggplot(iris_small, aes(x=Species,
                       y=Sepal.Width))+
  geom_boxplot()
# Compare variables

data_name <- data_available %>%
  filter(unwanted_variable > 5)
ggplot(data_available, aes(x=variable,
                           y = variable)) + 
  geom_point()


# Additional Aesthetics "colour"

ggplot(data_available, aes(x = variable,
                           y= variable,
                           color = 'red')) +
  geom_point()


#size 
ggplot(data_available, aes(x = variable,
                           y = Variable,
                           color ='red',
                           size = 0,5)) +
  geom_point()


#faceting 

ggplot(data_available, aes(x = variable,
                           y = variable)) +
  geom_point()+
  facet_wrap(~variable)

#line plot

by_year <- data_available %>%
  group_by(year) %>%
  summarize(medianvariable = median(variable))
ggplot(by_year, aes(x=year,
                    y=variable))+
  geom_line()+
  expand_limits(y=0)

#Histograms

ggplot(data_available, aes(x = variable)) +
  geom_histogram()

# Box plot

ggplot(data_available, aes(x = variable,
                           y = variable)) +
  geom_boxplot()


#The most common modifications to any graph are adding a title and x- and y-labels and setting the x- and y-limits

plot(x = data$Xvariable, y = data$Yvariable,
     xlab = "Xvariable_label",
     ylab = "Yvariable_label", main = "Scatter plot",
     xlim = c(0, 45), ylim = c(4, 19))

#The order in which xlab, ylab , main, xlim, and ylim are entered is irrelevant, but they must be in lowercase letters.
#The xlab and ylab options are used for labels and the main option for the title.
#The xlim and ylim options are used to specify the lower and upper limits on the axes

xlim = c(min(data$variable), max(data$variable))

#within the plot command, but, if there are missing values in the plotted variable, you should extend the min and max functions with the na.rm=TRUE option. 
#This produces:

xlim = c(min(data$variable, na.rm = TRUE),
         max(data$variable, na.rm = TRUE))


#3 shows the symbols that can be obtained with the different values of pch. For solid points the command is pch =16
##The plotting option for changing colours is useful for graphics presented on a screen or in a report.

plot(x = data$Xvariable, y = data$Yvariable,
     xlab = "Xvariable_label",
     ylab = "Yvariable_label", main = "Scatter plot",
     xlim = c(0, 45), ylim = c(4, 19),
     pch = 16, col = 2) 


#The size of the plotting symbols can be changed with the cex option, and again, this can be added as an argument to the plot command.
#The default value for cex is 1. Adding cex=1.5 to the plot command produces a  graph in which all points are 1.5 times the default size:

plot(x = data$Xvariable, y = data$Yvariable,
     xlab = "Xvariable_label", ylab = "Yvariable_label",
     main = "Scatter plot",
     xlim = c(0, 45), ylim = c(4, 19),
     pch = 16, cex = 1.5)


#BOXPLOT
#The boxplot should most often be your tool of choice, especially when working with a continuous numerical response (dependent) variable and categorical explanatory (independent) variables.
#Its purpose is threefold: detection of outliers, and displaying heterogeneity of distribution and effects of explanatory variables.
#Proper use of this graphing tool, along with the Cleveland dotplot (which is described fully in Section 7.4), can provide a head start on analysis of data.

boxplot(data$variable)


#Scatter plots allow you to compare two variables within your data. To do this with ggplot2, you use:

geom_point()



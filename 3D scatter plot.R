#3D scatter plot


library(readxl)
data<-read_excel("/Users/fanliu/Desktop/data.xlsx")
View(data)

install.packages("plotly")
library(plotly)

?plot_ly
plot_ly(data, x = ~Values1, y = ~Values2, z = ~Values3, marker=list(size=2)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Values1'),
                      yaxis = list(title = 'Values2'),
                      zaxis = list(title = 'Values3')))


plot_ly(data, x = ~V1, y = ~V2, z = ~V3, marker=list(size=2)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'V1'),
                      yaxis = list(title = 'V2'),
                      zaxis = list(title = 'V3')))

plot_ly(data, x = ~Value1a, y = ~Value2a, z = ~Value3a, marker=list(size=2)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Value1a'),
                      yaxis = list(title = 'Value2a'),
                      zaxis = list(title = 'Value3a')))

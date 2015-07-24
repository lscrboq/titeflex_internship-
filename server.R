#installation of required R packages
library('shiny')
library('googlesheets')


#sets file path of working directory
setwd('W:/Flex-Tek/STSL/Laconia Engineering/MFG ENG INFORMATION/INVENTORY FILES')

#reads data from inventory csv files
s130 <- read.csv('s130.csv', header = T) 
s180 <- read.csv('s180.csv', header = T)
s190 <- read.csv('s190.csv', header = T)
s220 <- read.csv('s220.csv', header = T)
s240 <- read.csv('s240.csv', header = T)
s370 <- read.csv('s370.csv', header = T)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
s410_swage <- read.csv('s410_swage.csv', header = T)
s410_crimp <- read.csv('s410_crimp.csv', header = T)
s410_510 <- read.csv('s410_510.csv', header = T)
s500 <- read.csv('s500.csv', header = T)
s500sa <- read.csv('s500sa.csv', header = T)
s370_240_660_220 <- read.csv('s370_240_660_220.csv', header = T)
s480 <- read.csv('s480.csv', header = T)
s510 <- read.csv('s510.csv', header = T)
s660 <- read.csv('s660.csv', header = T)
swage_tooling <- read.csv('swage_tooling.csv', header = T)
misc_tooling <- read.csv('misc_tooling.csv', header = T)
part_specific_tooling <- read.csv('part_specific_tooling.csv', header = T)

#sets up shiny server 
shinyServer((function(input, output){
  output$table <- renderTable(data <- switch(input$series, 's130' = s130, 's180' = s180, #switches between data rendered in table by choice from drop
                                             's190' = s190, 's220' = s220, 's240' = s240,
                                             's370' = s370, 's410_swage' = s410_swage,'s410_crimp' = s410_crimp, 's480' = s480,
                                             's410_510'= s410_510, 's500' = s500, 's500sa' = s500sa,
                                             's370_240_660_220'= s370_240_660_220, 's510' = s510, 's660' = s660,
                                             'swage_tooling'= swage_tooling, 'misc_tooling' = misc_tooling, 
                                             'part_specific_tooling' = part_specific_tooling))
  
  
})
)

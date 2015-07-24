library('shiny')

shinyUI(fluidPage(
  
  titlePanel('Department 86 Inventory'),
  sidebarLayout(
    sidebarPanel(
      selectInput('series', label = "Choose a category to display:", 
                  choices = list('130 Series' = 's130', '180 Series' = 's180', '190 Series' = 's190',
                    '220 Series' = 's220', '240 Series' = 's240', '370 Series' = 's370', 'Shared 220, 240, 370, 660' = 's370_240_660_220',
                    '410 Swage' = 's410_swage','410 Crimp' = 's410_crimp', 'Shared 410, 510' = 's410_510', '480 Series' = 's480', 
                    '500 Series' = 's500', 'SA500 Series' = 's500sa', '660 Series' = 's660',
                    'General Swage Tooling' = 'swage_tooling', 'Miscellaneous Tooling' = 'misc_tooling',
                    'Part Specific Tooling' ='part_tooling')
                  , selected = '130 Series')
      
    ),mainPanel(
      tableOutput('table')
    )
  )))

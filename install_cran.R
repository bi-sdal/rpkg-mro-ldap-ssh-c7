cran_pkgs <- c(
    cran_pkgs <- c(
    # GIS packages
    'rgdal',
    'rgeos',
    'tigris',
    'osmar',
    'tmap',
    'tmaptools',
    'sp',
    'mapview',
    #
    'magrittr',
    'DBI',
    'RPostgreSQL',
    'tidyverse',
    'lubridate',
    'ggthemes',
    'rmarkdown',
    'curl',
    'httr',
    'rio',
    'devtools',
    'bigmemory',
    'biganalytics',
    'data.table',
    'sqldf',
    'shiny',
    'shinydashboard',
    'flexdashboard',
    'DT',
    'leaflet',
    'highcharter',
    'plotly',
    'ggvis',
    'dygraphs',
    'GGally',
    'glmnet',
    'useful',
    'coefplot',
    'rpart.plot',
    'randomForest',
    'RJSONIO',
    'PKI',
    'packrat',
    'rsconnect',
    'rstan',
    'ggmap',
    'rJava',
    'acs',
    'tidytext'
)
)

install_error_message <- 
    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!                                    !!!!!!!!!!
     !!!!!!!!!! A PACKAGE DID NOT INSTALL PROPERLY !!!!!!!!!!
     !!!!!!!!!!                                    !!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    "

tryCatch({
    install.packages(cran_pkgs)
}, error = function(e) {
    stop(install_error_message)
    Sys.sleep(10)
})

print("Finished Installing")

for (p in cran_pkgs){
    print(sprintf('Loading: %s', p))
    tryCatch({
        library(p, character.only = TRUE)
    }, error = function(e) {
        stop(install_error_message)
        Sys.sleep(10)
    })
}

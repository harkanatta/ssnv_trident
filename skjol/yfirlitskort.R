```{r yfirlitskort,echo = FALSE,	fig.align = "center",	message = FALSE,	warning = FALSE,	out.width='100%',	error=FALSE}

stodvar<- sf::read_sf(dsn="skjol/stodvar.shp")
#dypi20<- rgdal::readOGR(dsn="skjol/20mDypi.shp", verbose = FALSE)
dypi10<- rgdal::readOGR(dsn="skjol/10mlengjur.shp", verbose = FALSE)
images = c("https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk6/hafnir.jpeg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk4/samsett.jpeg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/Finnssta%C3%B0anes/hrossa.jpeg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk1/stodvar/st1/sk1-st1B.jpg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk2/samsett.jpeg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk5/stodvar/st1/sk5-st1.jpg",
           "https://raw.githubusercontent.com/harkanatta/ssnv_trident/master/skjol/skogar/sk3/samsett.jpeg")

urls=c("https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#1","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#3","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#18","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#21","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#11","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#20","https://harkanatta.github.io/orplast2019/slaedur/slaedur.html#7")

litir <- RColorBrewer::brewer.pal(7,"Accent")
library(mapview)     
map <- mapview(dypi10,col.regions="#cb5600",map.types="Stamen.TerrainBackground",label = "10 m dýpi", legend = FALSE)+mapview(stodvar, popup = leafpop:::popupIframe(urls), legend=FALSE,col.regions=litir,cex=8)

library(magrittr)
img <- "https://github.com/harkanatta/ssnv_trident/blob/master/graphs/tvologo.jpg?raw=true"
map %>% leafem::addLogo(img, width = '20%', height = '25%',offset.y = 20,offset.x = 80,alpha = 0.7) %>% leaflet.extras::addFullscreenControl(pseudoFullscreen = T)

```
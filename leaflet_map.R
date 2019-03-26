### map with custom markers

# create icon
boulderIcon <- icons(
  iconUrl = "http://www.bergfreunde.de/out/pictures/wysiwigpro/kalkulatoren/boulderer.svg",
  iconWidth = 38, iconHeight = 95,
  iconAnchorX = 22, iconAnchorY = 94,
)

# create markers
bouldering_spots <- data.frame(lat = c(49.442747,49.479777,49.434361),
                               lng = c(10.959739,11.122492,11.097657))

# websites
bouldering_sites <- c(
  "<a href='https://www.boulderhalle-steinbock.de'>der steinbock</a>",
  "<a href='https://cafekraft.de/nuernberg'>Café Kraft</a>",
  "<a href='https://www.boulderhalle-e4.de/'>E4</a>"
)

# create map
bouldering_spots %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = boulderIcon, popup = bouldering_sites)

library(leaflet)
library(sf)

setwd("D:/leaflet/shapefiles/")
atd = st_read("atd.shp")
l_93 = st_read("1993lines.shp")
p_93 = st_read("1993points.shp")
l_98 = st_read("1998lines.shp")
p_98 = st_read("1998points.shp")
l_99 = st_read("1999lines.shp")
p_99 = st_read("1999points.shp")
l_05 = st_read("2005lines.shp")
p_05 = st_read("2005points.shp")
l_07 = st_read("2007lines.shp")
p_07 = st_read("2007points.shp")
l_08 = st_read("2008lines.shp")
p_08 = st_read("2008points.shp")
l_16 = st_read("2016lines.shp")
p_16 = st_read("2016points.shp")
l_17 = st_read("2017lines.shp")
p_17 = st_read("2017points.shp")
l_18 = st_read("2018lines.shp")
p_18 = st_read("2018points.shp")
l_19 = st_read("2019lines.shp")
p_19 = st_read("2019points.shp")

pal93 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_93$Point_Type)
pal98 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_98$Point_Type)
pal99 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_99$Point_Type)
pal05 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_05$Point_Type)
pal07 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_07$Point_Type)
pal08 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_08$Point_Type)
pal16 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_16$Point_Type)
pal17 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_17$Point_Type)
pal18 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_18$Point_Type)
pal19 = colorFactor(palette = c("#1eb17d", "#e52b50"), domain = p_19$Point_Type)

map = leaflet() %>%
  addLayersControl(
    baseGroups = c("OSM", "Toner", "Positron", "NatGeoMap"),
    overlayGroups = c("1993", "1998", "1999", "2005", "2007", "2008", "2016", 
                      "2017", "2018", "2019")) %>%
  addPolygons(data = atd, color = "#a65b4e", weight = 3, 
              fillColor = "#ebebeb", fillOpacity = 0.1, 
              highlight = highlightOptions(weight = 5,
                                           color = "red",
                                           fillColor = "#e34e7b",
                                           fillOpacity = 0.7),
              label =~ name) %>%
  addPolylines(data = l_93, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                              color = "#b19eea",
                                                              fillOpacity = 0.7),
               label =~ Name, group = "1993") %>%
  addCircleMarkers(data = p_93, label =~ Point_Name, color =~pal93(Point_Type), 
                   radius =~ 3, group = "1993") %>% 
  addPolylines(data = l_98, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                              color = "#b19eea",
                                                              fillOpacity = 0.7),
               label =~ Name, group = "1998") %>%
  addCircleMarkers(data = p_98,label =~ Point_Name, color =~pal98(Point_Type),
                   radius =~ 3, group = "1998") %>%
  addPolylines(data = l_99, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "1999") %>%
  addCircleMarkers(data = p_99,label =~ Point_Name, color =~pal99(Point_Type),
                   radius =~ 3, group = "1999") %>%
  addPolylines(data = l_05, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2005") %>%
  addCircleMarkers(data = p_05,label =~ Point_Name, color =~pal05(Point_Type),
                   radius =~ 3, group = "2005") %>%
  addPolylines(data = l_07, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2007") %>%
  addCircleMarkers(data = p_07,label =~ Point_Name, color =~pal07(Point_Type),
                   radius =~ 3, group = "2007") %>%
  addPolylines(data = l_08, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2008") %>%
  addCircleMarkers(data = p_08,label =~ Point_Name, color =~pal08(Point_Type),
                   radius =~ 3, group = "2008") %>%
  addPolylines(data = l_16, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2016") %>%
  addCircleMarkers(data = p_16,label =~ Point_Name, color =~pal16(Point_Type),
                   radius =~ 3, group = "2016") %>%
  addPolylines(data = l_17, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2017") %>%
  addCircleMarkers(data = p_17,label =~ Point_Name, color =~pal17(Point_Type),
                   radius =~ 3, group = "2017") %>%
  addPolylines(data = l_18, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2018") %>%
  addCircleMarkers(data = p_18,label =~ Point_Name, color =~pal18(Point_Type),
                   radius =~ 3, group = "2018") %>%
  addPolylines(data = l_19, stroke = TRUE, color = "#698fb0", weight = 2,
               opacity = 1, fill = FALSE,
               fillOpacity = 0.2, highlight = highlightOptions(weight = 5,
                                                               color = "#b19eea",
                                                               fillOpacity = 0.7),
               label =~ Name, group = "2019") %>%
  addCircleMarkers(data = p_19,label =~ Point_Name, color =~pal19(Point_Type),
                   radius =~ 3, group = "2019") %>%
  addLegend(data = p_19, position = "bottomright", pal = pal19, values = ~Point_Type,
            title = "Òèï") %>% 
  addTiles(group = "OSM") %>%
  addProviderTiles("Stamen.Toner", group = "Toner") %>%
  addProviderTiles("CartoDB.Positron", group = "Positron") %>% 
  addProviderTiles("Esri.NatGeoWorldMap", group = "NatGeoMap")
 map

muenster <- opq(bbox =  c(7.61, 51.954, 7.636, 51.968)) %>% 
  add_osm_feature(key = 'highway') %>% 
  osmdata_sf() %>% 
  osm_poly2line()

muenster_center <- muenster$osm_lines %>% 
  select(highway)
  
muenster_center

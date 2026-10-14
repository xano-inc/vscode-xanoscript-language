// compute the distance between two points
util.geo_distance {
  latitude_1 = ${1:40.71}
  longitude_1 = ${2:74}
  latitude_2 = ${3:48.86}
  longitude_2 = ${4:2.35}
} as ${5:\$distance}
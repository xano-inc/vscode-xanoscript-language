// map an array to a new array based on a transformation
array.map (${1:[1,2,3]}) {
  value = ${2:\$this * 2}
} as ${3:\$mapped}
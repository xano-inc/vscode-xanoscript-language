// store the difference between two arrays based on one of their attribute
array.difference (${1:["Bar","Baz"]}) {
  value = ${2:["Foo","Bar"]}
  by = ${3:\$this} 
} as ${4:\$x1}

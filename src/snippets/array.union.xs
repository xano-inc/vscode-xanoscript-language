// unite two arrays based on one of their attribute (or whole values)
array.union (${1:["Bar","Baz"]}) {
  value = ${2:["Foo","Bar"]}
  by = ${3:\$this} 
} as ${3:\$x4}

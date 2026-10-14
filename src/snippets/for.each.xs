// repeat actions on every item in a list
foreach (${1:[]|push:1|push:2|push:3|push:4}) {
  each as ${2:\$item} {
    ${3:break}
  }
}
// throw an exception if the condition is false
precondition (${1:`true == true`}) {
  error_type = ${2:"standard"}
  error = ${3:"Something wrong happened"}
}
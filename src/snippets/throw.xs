// throws an error and interrupt the current execution of the script
throw {
  name = ${1:"error name"}
  value = ${2:"error message"}
}
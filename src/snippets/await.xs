// await for asynchronous functions to complete
await {
  ids = []|push:${1:\$func1}
  timeout = ${2:10}
} as ${3:\$values}
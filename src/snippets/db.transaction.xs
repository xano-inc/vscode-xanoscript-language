// run all the contained query in a single transaction
db.transaction {
  description = ${1:"transaction description"}
  stack {
  }
}
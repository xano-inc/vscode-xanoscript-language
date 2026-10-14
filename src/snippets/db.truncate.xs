// delete all the records in the provided table
db.truncate ${1:table_name} {
  reset = ${2|false,true|}
}
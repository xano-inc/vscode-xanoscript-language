// Change datasource for all future queries on this stack
db.set_datasource {
  value = ${1:"test"}
}
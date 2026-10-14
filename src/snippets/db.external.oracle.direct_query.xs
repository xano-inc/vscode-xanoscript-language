// Query an external Oracle database directly using SQL Statements.
db.external.mysql.direct_query {
  sql = ${1:"SELECT * FROM users WHERE users.email = ?"}
  response_type = "list"
  connection_string = ${2:"oracle://user_name:user_password@domain.com:1521/my_db"}
  arg = ${3:""}
} as ${4:\$ext_query_results}
// Query an external MySQL database directly using SQL Statements.
db.external.mysql.direct_query {
  sql = ${1:"SELECT * FROM users WHERE users.email = ?"}
  response_type = "list"
  connection_string = ${2:"mysql://user_name:user_password@domain.com:3306/my_db?sslmode=disabled"}
  arg = ${3:""}
} as ${4:\$ext_query_results}
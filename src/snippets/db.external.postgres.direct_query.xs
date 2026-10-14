// Query an external Postgres database directly using SQL Statements.
db.external.postgres.direct_query {
  sql = ${1:"SELECT * FROM users WHERE users.email = ?"}
  response_type = ${2|"list","single"}
  connection_string = ${3:"postgres://le_user:my%20password@example.com:5432/my_db?sslmode=prefer"}
  arg = ${4:\$input.email}
} as ${5:\$ext_query_results}
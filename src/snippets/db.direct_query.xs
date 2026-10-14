// Query your Xano database directly using SQL Statements.
db.direct_query {
  sql = ${1:"SELECT * FROM users WHERE users.email = ?"}
  response_type = ${2|"list","single"}
  arg = ${3:""}
} as ${4:\$ext_query_results}
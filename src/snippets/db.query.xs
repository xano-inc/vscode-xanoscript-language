// retrieve many records from your database
db.query ${1:user} {
  where = ${2:`(\$db.client.email|to_lower) == (\$input.email\|to_lower)`}
} as ${3:\$user}
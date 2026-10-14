// return schema at path or the schema for the entire database table
db.schema ${1:user} {
  path = ${2:"email"}
} as ${3:\$email_schema}
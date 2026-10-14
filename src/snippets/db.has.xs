// check if a record exist
db.has ${1:user} {
  field_name = ${2:"email"}
  field_value = ${3:\$input.email}
} as ${4:\$user_exist}
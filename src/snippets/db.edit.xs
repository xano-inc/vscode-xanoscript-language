// edit a record from your database
db.edit ${1:user} {
  field_name = ${2:"email"}
  field_value = ${3:\$input.email}
  data = {
    category : ${4:\$input.category}
  }
} as ${5:\$updated_user}
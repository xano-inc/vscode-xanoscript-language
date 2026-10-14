// add a record to your database
db.add ${1:user} {
  data = {
    name: ${4:\$input.name},
    email : ${5:\$input.email}
  }
} as ${6:\$new_user}
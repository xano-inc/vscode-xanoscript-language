// delete a record from your database
db.del ${1:comment} {
  field_name = ${2:"id"}
  field_value = ${3:\$input.commentId}
}
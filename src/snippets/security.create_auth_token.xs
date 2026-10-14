// Security: Create a token used for authentication
security.create_auth_token {
    dbtable = "${1:user}"
    extras = {${2:extras}}
    expiration = ${3:86400}
    id = "${4:id}"
} as ${5:\$auth_token}
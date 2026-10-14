// Security: Create a secret key for digital signatures and symmetric encryption
security.create_secret_key {
    bits = ${1:1024}
    format = "${2:object}"
} as ${3:\$symmetric_key}
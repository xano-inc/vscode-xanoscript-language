// Security: Encrypt a payload as raw binary data
security.encrypt{
    data = "${1:data}"
    algorithm = "${2:|aes-128-cbc|aes-192-cbc|aes-256-cbc|aes-128-gcm|aes-192-gcm|aes-256-gcm|}"
    key = "${3:key}"
    iv = "${4:initialization_vector}"
} ${5:\$encrypted_payload}
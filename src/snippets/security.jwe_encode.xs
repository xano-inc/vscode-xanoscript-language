// Security: Encode a payload as a JWE token
security.jwe_encode {
    headers = {${1:headers}}
    claims = {${2:claims}}
    key = "${3:key}"
    key_algorithm = "${4:|A128KW|A192KW|A256KW|A128GCMKW|A192GCMKW|A256GCMKW|ECDH-ES+A128KW|ECDH-ES+A192KW|ECDH-ES+A256KW|}"
    content_algorithm = "${5:|A128GCM|A192GCM|A256GCM|A128CBC-HS256|A192CBC-HS384|A256CBC-HS512|}"
    ttl = ${6:0}
} ${7:\$encoded_payload}
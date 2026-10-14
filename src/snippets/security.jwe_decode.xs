// Security: Decode a JWE token
security.jwe_decode {
    token = "${1:jwe_token}"
    key = "${2:key}"
    check_claims = {${3:check_claims}}
    key_algorithm = "${4:|A128KW|A192KW|A256KW|A128GCMKW|A192GCMKW|A256GCMKW|ECDH-ES+A128KW|ECDH-ES+A192KW|ECDH-ES+A256KW|}"
    content_algorithm = "${5:|A128GCM|A192GCM|A256GCM|A128CBC-HS256|A192CBC-HS384|A256CBC-HS512|}"
    timeDrift = ${6:0}
} ${7:\$decoded_jew_token}
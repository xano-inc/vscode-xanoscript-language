// Security: Decode a JWS token
security.jws_decode {
    token = "${1:jws_token}"
    key = "${2:key}"
    check_claims = {${3:check_claims}}
    signature_algorithm = ${4:|"PS256"|"PS384"|"PS512"|"RS256"|"RS384"|"RS512"|"HS256"|"HS384"|"HS512"|"ES256"|"ES384"|"ES512"|}
    timeDrift = ${5:0}
} ${6:\$decoded_token}
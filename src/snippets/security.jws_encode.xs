// Security: Encode a payload as a JWS token
security.jws_encode {
    headers = {${1:headers}}
    claims = {${2:claims}}
    key = "${3:key}"
    signature_algorithm = ${4:|"PS256"|"PS384"|"PS512"|"RS256"|"RS384"|"RS512"|"HS256"|"HS384"|"HS512"|"ES256"|"ES384"|"ES512"|}
    ttl = ${5:0}
} ${6:\$encrypted_payload}



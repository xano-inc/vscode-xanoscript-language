// Elastic Search: Query Elastic Search
cloud.elasticsearch.request{
    auth_type = "${1:API Key}"
    key_id = "${2:key_id}"
    access_key = "${3:access_key}"
    method = ${4|"GET","POST","PUT","DELETE","PATCH"|}
    url = "${5:url}"
    payload = {${6:payload}}
} as ${7:\$result}
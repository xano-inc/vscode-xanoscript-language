// Elastic Search: Manage Elastic Search records
cloud.elasticsearch.document{
    auth_type = "${1:API Key}"
    key_id = "${2:key_id}"
    access_key = "${3:access_key}"
    base_url = "${4:base_url}"
    index = "${5:index}"
    method = ${6|"GET","POST","PUT","DELETE","PATCH"|}
    doc_id = "${7:doc_id}"
} as ${8:\$response}
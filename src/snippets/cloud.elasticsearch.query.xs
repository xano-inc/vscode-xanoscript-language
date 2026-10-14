// Elastic Search: Elastic Search search request
cloud.elasticsearch.query{
    auth_type = "${1:API Key}"
    key_id = "${2:key_id}"
    access_key = "${3:access_key}"
    base_url = "${4:base_url}"
    index = "${5:index}"
    return_type = "${6:search}"
    expression = [${7:expression}]
    size = ${8:0}
    from = ${9:0}
    included_fields = [${10:included_fields}]
    sort = [${11:sort}]
    payload = {${12:payload}}
} as ${13:\$query_result}
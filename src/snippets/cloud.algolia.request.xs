// Query Algolia
cloud.algolia.request {
    application_id = "${1:algolia_application_id}"
    api_key = "${2:algolia_api_key}"
    url = "${3:algolia_url}"
    method = ${4|"POST","GET","PUT","DELETE", "PATCH"|}
    payload = {${5}}
} as ${6:\$algolia_response}
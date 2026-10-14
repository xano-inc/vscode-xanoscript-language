// AWS OpenSearch: AWS OpenSearch Search Request
cloud.aws.opensearch.query {
    auth_type = "${1:IAM}"
    key_id = "${2:key_id}"
    access_key = "${3:access_key}"
    region = "${4:|us-east-2|us-east-1|us-west-1|us-west-2|af-south-1|ap-east-1|ap-south-2|ap-southeast-3|ap-southeast-5|ap-southeast-4|ap-south-1|ap-northeast-3|ap-northeast-2|ap-southeast-1|ap-southeast-2|ap-southeast-7|ap-northeast-1|ca-central-1|ca-west-1|eu-central-1|eu-west-1|eu-west-2|eu-south-1|eu-west-3|eu-south-2|eu-north-1|eu-central-2|il-central-1|mx-central-1|me-south-1|me-central-1|sa-east-1|us-gov-east-1|us-gov-west-1|}"
    base_url = "${5:base_url}"
    index = "${6:index}"
    return_type = "${7:search}"
    expression = [${8:expression}]
    size = ${9:0}
    from = ${10:0}
    included_fields = [${11:included_fields}]
    sort = [${12:sort}]
    payload = {${13:payload}}
} as ${14:\$query_result}
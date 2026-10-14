// Azure Blob Storage: Generates a signed URL for the bucket 
cloud.azure.storage.sign_url{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    path = "${4:path}"
    ttl = ${5:300}
} as ${6:\$signed_url}
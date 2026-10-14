// Azure Blob Storage: List the contents of a bucket
cloud.azure.storage.list_directory{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    path = "${4:path}"
} as ${5:\$directory_contents}
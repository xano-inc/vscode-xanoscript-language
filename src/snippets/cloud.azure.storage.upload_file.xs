// Azure Blob Storage: Upload a file
cloud.azure.storage.upload_file{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    filePath = "${4:file_path}"
    file = ${6:\$file}
    metadata = {${7:metadata}}
} as ${8:\$response}
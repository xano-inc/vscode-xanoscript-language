// Azure Blob Storage: Creates a variable with metadata about the file
cloud.azure.storage.get_file_info{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    filePath = "${4:file_path}"
} as ${5:\$file_metadata}
// Azure Blob Storage: Creates a variable with information about the file
cloud.azure.storage.read_file{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    filePath = "${4:file_path}"
} as ${5:\$file_resource}
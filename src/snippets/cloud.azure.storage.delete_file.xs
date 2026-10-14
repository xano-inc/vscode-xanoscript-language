// Azure Blob Storage: Delete a file
cloud.azure.storage.delete_file{
    account_name = "${1:account_name}"
    account_key = "${2:account_key}"
    container_name = "${3:container_name}"
    filePath = "${4:file_path}"
}
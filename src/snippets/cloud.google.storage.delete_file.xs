// Google Cloud Storage: Delete a file
cloud.google.storage.delete_file {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      filePath = "${3:file_path}"
}
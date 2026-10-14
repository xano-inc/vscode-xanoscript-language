// Google Cloud Storage: Creates a variable with metadata about the file
cloud.google.storage.get_file_info {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      filePath = "${3:file_path}"
} as ${4:\$file}
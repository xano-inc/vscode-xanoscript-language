// Google Cloud Storage: Create a variable, with information about the file
cloud.google.storage.read_file {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      filePath = "${3:file_path}"
} as ${4:\$file}
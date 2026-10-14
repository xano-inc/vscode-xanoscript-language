// Google Cloud Storage: Upload a file
cloud.google.storage.upload_file {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      filePath = "${3:file_path}"
      file = ${4:\$file_resource}
      metadata = {$5}
}
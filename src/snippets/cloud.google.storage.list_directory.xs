// Google Cloud Storage: List the content of a bucket
cloud.google.storage.list_directory {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      path = "${3:path}"
} as ${4:\$directory_contents}
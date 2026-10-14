// Google Cloud Storage: Generates a signed URL for the bucket
cloud.google.storage.sign_url {
      service_account = "${1:service_account}"
      bucket = "${2:bucket_name}"
      filePath = "${3:file_path}"
      method = ${4|"GET","POST","PUT","DELETE","PATCH"|}
      ttl = ${5:300}
} as ${6:\$signed_url}
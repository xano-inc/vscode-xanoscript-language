// generate a signed URL for a private file object
storage.sign_private_url {
  pathname = ${1:"foo/bar.txt"}
  ttl = ${2:30}
} as ${3:\$signed_url}
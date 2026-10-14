// Create attachment metadata from a File Resource.
storage.create_attachment {
  value = ${1:$\input.attachment}
  access = "${2|public,private|}"
  filename = ${3:"my_file.txt"}
} as ${4:\$file}
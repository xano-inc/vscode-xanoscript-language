// Create a compressed zip archive
zip.create_archive {
  filename = ${1:"some_file.zip"}
} as ${2:\$zip_file}
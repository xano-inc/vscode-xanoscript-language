// create a new file with the given data
storage.create_file_resource {
  filename = ${1:"my_file.txt"}
  filedata = ${2:\$file_data_content}
} as ${3:\$file}
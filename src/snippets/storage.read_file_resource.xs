// Get the raw data from a File Resource.
storage.read_file_resource {
  value = ${1:\$input.file}
} as ${2:\$file_data_content}
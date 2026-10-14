// extract a zip file
zip.extract {
  zip = ${1:\$zip_file}
} as ${2:\$output}
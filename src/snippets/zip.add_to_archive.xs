// add a file to an existing archive
zip.add_to_archive {
  file = ${1:\$input.file}
  zip = ${2:\$zip_file}
}
// delete a file from a zip archive
zip.delete_from_archive {
  filename = {$1:\$input.file}
  zip = {$2:\$input.file}
}
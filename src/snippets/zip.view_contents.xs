// view content of a zip archive
zip.view_contents {
  zip = ${1:\$input.file}
} as ${2:\$zip_content}
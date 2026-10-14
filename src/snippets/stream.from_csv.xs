// Parse a CSV file resource and stream its row data
stream.from_csv {
    value = ${1:\$csv_file_resource}
    separator = "${2:,}"
    enclosure = "${3:'}"
    escape_char = "${4:'}"
} as ${5:\$stream}
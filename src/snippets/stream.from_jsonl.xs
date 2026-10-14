// Parse a JSONL file resource and stream its row data
stream.from_jsonl {
    value = ${1:\$jsonl_file_resource}
} as ${2:\$stream1}

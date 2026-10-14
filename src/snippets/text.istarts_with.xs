// Case-insensitive check if text starts with a value
text.istarts_with ${1:\$text} {
    value = "${2:}"
} as ${3:\$result}
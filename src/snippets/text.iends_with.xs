// Case-insensitive check if text ends with a value
text.iends_with ${1:\$text} {
    value = "${2:}"
} as ${3:\$result}
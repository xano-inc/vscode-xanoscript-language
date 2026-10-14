// Trim leading characters(default is whitespace) from text
text.ltrim ${1:\$text} {
    value = "${2: }"
}
// Redis: Get a range of elements from the list
redis.range {
    key = "${1:list}"
    start = ${2:startIndex}
    stop = ${3:endIndex}
} as ${4:\$result}
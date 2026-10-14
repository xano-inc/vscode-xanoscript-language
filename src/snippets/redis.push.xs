// Redis: Add an element to the end of the list
redis.push {
    key = "${2:list_name}",
    value = "${3:value}"
} as ${4:\$list_length}
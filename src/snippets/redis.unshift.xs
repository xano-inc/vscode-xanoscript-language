// Redis: Add an element to the beginning of the list
redis.unshift {
    key = "${1:list}"
    value = "${2:value_to_add}"
} as ${3:\$list_length}
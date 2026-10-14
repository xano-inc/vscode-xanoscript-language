// Redis: Remove from the beginning of a list
redis.shift {
    key = "${1:list}"
} as ${2:\$removed_value}
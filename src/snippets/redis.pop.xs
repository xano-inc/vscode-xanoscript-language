// Redis: Pop a value from a list (Remove from the end)
redis.pop {
    key = "${1:list}"
} as ${2:\$popped_value}
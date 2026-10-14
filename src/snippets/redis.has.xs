// Redis: Find out if a cache value exists
redis.has {
    key = "${1:key_name}"
} as ${2:\$result}
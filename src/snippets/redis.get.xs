// Redis: Get a cache value
redis.get {
    key = "${1:key_name}"
} as ${2:\$result}
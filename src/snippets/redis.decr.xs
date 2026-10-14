// Redis: Decrement a cache value
redis.decr {
    key = "${1:key_name}",
    by = ${2:1}
} as ${3:\$updated}
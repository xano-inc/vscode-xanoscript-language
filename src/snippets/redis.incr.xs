// Redis: Increment a cache value
redis.incr {
    key = "${1:counter}",
    by = ${2:1}
} as ${3:\$updated}
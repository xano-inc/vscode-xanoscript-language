// Redis: Set a cache value
redis.set {
    key = "${1:key_name}"
    data = "${2:key_value}"
    ttl = ${3:60}
}
// Redis: Get a list of cache keys that match an expression
redis.keys {
  search = "${1:expression}"
} as ${2:\$keys}
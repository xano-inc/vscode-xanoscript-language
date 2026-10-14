// Redis: Get length of a list
redis.count {
    key = "${1:list}"
} as ${2:\$count}
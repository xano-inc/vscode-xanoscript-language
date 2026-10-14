// Redis: Rate limit requests
redis.ratelimit {
    key = "${1:rateLimitKey}"
    max = ${2:100}
    ttl = ${3:60}
    error = "${4:errorMessage}"
} as ${5:\$rateLimitResult}
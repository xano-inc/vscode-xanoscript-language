// Redis: Remove a value from the list
redis.remove {
    key = "${1:keyName}"
    value = "${2:valueToRemove}"
    count = ${3:removeCount}
}
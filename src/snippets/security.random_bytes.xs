// Security: Generate a string of random bytes
security.random_bytes {
    length = ${1:16}
} ${2:\$random_bytes}
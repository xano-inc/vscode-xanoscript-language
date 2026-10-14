// Security: Generate a random number
security.random_number {
    min = ${1:0}
    max = ${2:9007199254740991}
} ${3:\$random_number}
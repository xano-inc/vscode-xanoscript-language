// Security: Validate a match against a hashed password
security.check_password {
    text_password = "${1:text_password}"
    hash_password = "${2:password_hash}"
} as ${13:\$is_match}
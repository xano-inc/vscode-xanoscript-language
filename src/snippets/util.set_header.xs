// Add information to your response header
util.set_header {
  value = ${1:"Set-Cookie: sessionId=e8bb43229de9; HttpOnly; Secure; Domain=foo.example.com"}
  duplicates = ${2:"replace"}
}
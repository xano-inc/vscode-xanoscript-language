// generate a random password based on a set of rules
security.create_password {
  character_count = ${1:12}
  require_lowercase = ${2|true,false|}
  require_uppercase = ${3|true,false|}
  require_digit = ${4|true,false|}
  require_symbol = ${5|false,true|}
  symbol_whitelist = ${6:""}
} as ${7:\$password}
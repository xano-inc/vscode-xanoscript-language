// Get the geographic location of an IP Address.
util.ip_lookup {
  value = ${1:"123.234.99.22"}
} as ${2:\$loc}
// Choose a curve type (P-256, P-384, and P-521)
security.create_curve_key {
  curve = ${1|"P-256","P-384", "P-521"|}
  format = ${2|"object","base64"|}
} as ${3:\$crypto_key}
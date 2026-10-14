// create a text based template
util.template_engine {
  value = ${2:"""
    hello {{ \$name \}\}!
    """}
} as ${1:\$template}

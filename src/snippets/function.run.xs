// run a custom function
function.run ${1:add_fn} {
  input = ${2: {a: \$input.a, b: \$input.b}}
} as ${3:\$func1}
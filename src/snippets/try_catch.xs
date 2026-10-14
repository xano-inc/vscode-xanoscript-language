// try a code block and catch any errors
try_catch {
  try {
     ${1:try block}
  }

  catch {
    debug.log {
      value = \$error.message
    }
  }
}
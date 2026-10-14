// Create a JS or TS function to return data.
api.lambda {
  code = """
    // Your Javascript or Typescript code goes here
    console.log("hello world");
    """
  timeout = 10
} as ${1:\$script}
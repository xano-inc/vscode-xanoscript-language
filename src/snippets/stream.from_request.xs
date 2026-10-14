// convert an external request to a streaming API into an array
stream.from_request {
  url = ${1:"http://example.com/api/v1"}
  method = ${2|"POST","GET","PUT","DELETE", "PATCH"|}
  params = ${3:{\}|set:"key":"value"}
  headers = ${4:[]|push:"Set-Cookie: sessionId=e8bb43229de9; Domain=foo.example.com"}
  timeout = ${5:10}
  follow_location = {6|true,false|}
} as ${6:\$stream_1}
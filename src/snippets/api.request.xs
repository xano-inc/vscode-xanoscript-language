// makes an API request
api.request {
  url = ${1:"https://www.example.com"}
  method = ${2|"POST","GET","PUT","DELETE", "PATCH"|}
  params = ${3:{\}|set:"key":"value"}
  headers = ${4:[]|push:"Set-Cookie: sessionId=e8bb43229de9; Domain=foo.example.com"}
  timeout = ${5:25}
} as ${6:\$api_req}
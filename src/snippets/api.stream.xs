// Respond with data when the API response type is set to 'Stream'.
api.stream {
  value = ${1:\$data}
}
// Send an event over Realtime
api.realtime_event {
  channel = ${1:"channel_name"}
  data = ${2:\$data}
  auth_table = ${3:"table_id"}
  auth_id = ${4:"user_id"}
}
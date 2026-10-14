// group an array by a specific attribute
array.group_by (${1:[{"type":"A"\},{"type":"B"\},{"type":"A"\}]}) {
  by = ${2:\$this.type}
} as ${3:\$grouped}
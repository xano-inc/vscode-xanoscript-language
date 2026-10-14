// Create attachment metadata from a File Resource.
storage.create_image {
  value = ${1:\$input.image}
  access = "${2|public,private|}"
  filename = ${3:"my_image.jpg"}
} as ${4:\$image}

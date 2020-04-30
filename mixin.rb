# $LOAD_PATH << "."
# require "crud"

require_relative "crud"

users = [
  { username: "Chris", password: "123456" },
  { username: "James", password: "abc" },
  { username: "Kobe", password: "zxc" },
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users

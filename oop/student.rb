# $LOAD_PATH << "."
# require "crud"

$LOAD_PATH << "../"
require "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name :#{@last_name}"
  end
end

chris = Student.new("Chris", "Yang", "ccy", "chris@gmail.com", "123456")
hashed_password = chris.create_hash_digest(chris.password)
puts chris

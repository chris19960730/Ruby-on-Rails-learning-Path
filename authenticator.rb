
users = [
    {username:"Chris",password:"123456"},
    {username:"James",password:"abc"},
    {username:"Kobe",password:"zxc"}
]

puts "Welcome to the authenticator"

25.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempt = 0

def find_user(users,username,password)
    users.each do |user|
        if user[:username] ==username && user[:password] ==password
           return user
        end
    end
    return "Credential incorrect!"
end 


while attempt <3
    print "Username: "
    user_name = gets.chomp

    print "Password: "
    password = gets.chomp
    puts find_user(users,user_name,password)
    puts "Press n to quit or other key to continue:"
    opt = gets.chomp.downcase
    break if opt =='n'
    attempt +=1
end

puts "you have exceeded the number of attempts"




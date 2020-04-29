dial_book = {
  "newyork" => "212",
  "edison" => "908",
  "sanjose" => "408",
  "sanfrancisco" => "301",
}

def get_city_names(somehash)
  return somehash.keys
end

def get_area_code(somehash, key)
  return somehash[key] if somehash.key?(key)
end

counter = 0
while counter < 3
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  city_name = get_city_names(dial_book)
  puts "we have cities: "
  city_name.each { |city| puts city }

  puts "select a city"
  selected_city = gets.chomp.downcase

  if city_name.include?(selected_city)
    puts "the area code is " + get_area_code(dial_book, selected_city)
  end

  counter += 1
end

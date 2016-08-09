class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Toshiro's place", "Fukuoka", 2, 20),
  Home.new("Ai's place", "Kyoto", 2, 20),
  Home.new("Tana's place", "Los Angeles", 4, 40),
  Home.new("Lou's place", "Chicago", 8, 100),
  Home.new("Paula's place", "London", 4, 50)
]

def print(array)
	array.each do |hm|
		puts "#{hm.name}, #{hm.city}, #{hm.price}"
	end
end

homes.each do |hm|
  puts "#{hm.name}"
  end

sorted = homes.sort do |hm1, hm2| 
	hm1.price <=> hm2.price
end

puts "Do you want to see the lowest prices first or the highest? enter lowest or highest"
see_sorted = gets.chomp
	if see_sorted == "lowest"
		 print(sorted)
	elsif see_sorted == "highest"
		print(sorted.reverse)
	else
		puts "please enter either 'lowest or 'highest'"
		see_sorted = gets.chomp
		
	end
		
		








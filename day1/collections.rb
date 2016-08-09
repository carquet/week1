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
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |hm|
	puts hm.name
	end
homes.each do |hm|
	puts "#{hm.name}'s place is #{hm.city} Price: #{hm.price} a night"
end

'''cities = homes.map do |hm|
	hm.city
end
puts cities'''

#map
price = homes.map do |hm|
	hm.price
end
puts price

#reduce

average_price = homes.reduce(0.0){|sum, hm| sum + hm.price}
puts average_price / homes.length

'''homes.each_with_index do |hm, index|
	puts "Home number #{index + 1}: #{hm.name}"
end'''

san_juan_homes = homes.select do |hm|
  # Keep hm only if its city is "San Juan"
  hm.city == "San Juan"
end
print  san_juan_homes

'''sorted = homes.sort do |home1, home2|
	home1.capacity <=> home2.capacity
end
puts sorted'''





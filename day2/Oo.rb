class Car 
	def initialize noise engine
		@noise = noise
		@engine = engine
		@list_of_cities = load_cities
	end
	def make_noise
		puts @noise + @engine.engine_noise
	end
	def self.speed_control
		puts "What is your current speed?"
		user_answer = gets.chomp.to_i
		if user_answer > 100
			puts "You should slow down !"
		end
	end
end


class Engine
		def initialize sound 
		@sound
		end
end

#	def visit_city(city)
#		IO.read("cities.txt")
#	end

#	def record_visit
#		@list_of_cities<<city
#		IO.read()
#	end

#	def cities
#		@list_of_cities = load_cities
#	end
#This method does not answer the question of the exercise. It prints the cities but do not return the array.
#	def show_visit
#		@list_of_cities.each do |city|
#			puts "The cities you visited are: #{city}"
#		end
#	end

=begin
class RacingCar < Car
	def initialize
		@noise = "brooooom"
	end
end	


class Person 
	attr_reader :name
	def initialize(name, age)
	@name = name
	@age = age
	end
end

=end

my_car = Car.new ("pouet pouet",Engine.new)
# '''other_car = Car.new "honk honk"
# my_car.make_noise
# other_car.make_noise'''
#my_car.speed_control
#my_car.record_visit("Madrid")
#my_car.cities

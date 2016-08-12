#exercise 1
#hash = {wat:[0,1,{wut:[0, [x[a,b,c,d,e,t,y,s,f,{bbq: "bacon"}]]]}]}

#arr =[[0,1,2,3,4,{secret: {unlock: [0,"somtehing_else"]}}]]

#print  "#{hash[:wat][2][:wut][1][0][9][:bbq]}"
##########################################################################
#EXERCISE 2

class Car
	attr_reader :brand, :model, :sound, :engine
	def initialize brand
		@brand = brand
		@model = model
		@sound = sound
		@engine = engine
	end

	def make_noise
		puts "#{@sound}#{@engine.engine_sound}"
	end
end

class Engine
	def initialize sound
		@sound = sound
	end
	def engine_sound
		@sound
	end
end

class CarDealer
	def initialize
		@inventory = []
	end

#	inventario
#	filtrar por marca
#	imprimir el array 
end

car_dealer = Car.new("Ford", "Fiesta")
car_broker = Car.new("Ford", )
car_dealer.cars("Ford") =end

#############################################################################
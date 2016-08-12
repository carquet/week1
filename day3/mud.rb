class Room
	attr_reader :description , :exits
	def initialize description, exits
		@description = description
		@exits = {}
	end
end


class Game
	def initialize labyrinth
		@labyrinth = labyrinth
		@position = 0
	end
#code to move from one place to another	
	def ask_input
		puts "where do you want to go ? N, S, W, E"
		user_input = gets.chomp
	end

	def move_player 
		ask_input
	end

	def determine_position
		@labyrinth[0].description
	end

end


game1 = Game.new [ entrance_hall = Room.new("You are in the hall", {N: 0, S: 0, W: 0, E: 1}),
					kitchen = Room.new("you are in the kitchen", {N: 1, S:1, W: 0, E: 2}),
					gardens = Room.new("you are in the garden", {N: 2, S:2, W: 1, E: 2})
]

puts game1.determine_position
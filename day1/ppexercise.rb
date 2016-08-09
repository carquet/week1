class ProgrammingLanguage
	attr_accessor :name, :age, :type
	def initialize(name, age, type)
		@name = name
		@age = age
		@type = type
	end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
	array.each do |language|
		puts "Language: #{language.name}| Age: #{language.age} | type system: #{language.type}"
end
end

array_printer(array_of_languages)
puts "========================================"
aged_languages = array_of_languages.map do |language| 
	language.age += 1
	language
end

array_sorted = array_of_languages.sort{|a, b| b.age <=> a.age }	
array_printer(array_sorted)
puts "----------------------"
without_java = array_sorted.delete_if {|language| language == java}
array_printer(without_java)
puts"---------------------"

without_java.shuffle






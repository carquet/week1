class Blog
	def initialize
		@container = []
	end
	def add_post(post)
		@container<<post	
	end

	def publish_front_page
	end

end


class Post
	
	def initialize(title, date, text) 
		@title = title
		@date = date
		@text = text
	end	
	
end

laetitia = Blog.new
day1 = Post.new("The First Day", "09/08/2016", "It's been a hard day work")
day2 = Post.new("the second day", "10/08/2016", "Woaw")
day3 = Post.new("The third day", "11/08/2016", "jesus!!")
laetitia.add_post(day1)
laetitia.add_post(day2)
laetitia.add_post(day3)
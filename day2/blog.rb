class Blog
	def initialize
		@container = []
	end
	def add_post(post)
		@container<<post	
	end
	def organize_by_date
		date_sorted = @container.sort do|post1, post2|
		post2.date <=>post1.date
		end
		date_sorted.each do |post|
			puts "#{post.title}"
			puts "***************"
			puts "#{post.text}"
			puts "-----------" 
		end
	end
end


class Post
	attr_reader :title, :date, :text
	def initialize title, date, text 
		@title = title
		@date = date
		@text = text
	end	
	
end

blog = Blog.new
blog.add_post Post.new("Post title 1", Time.local(2000,01,20), "hello hello hello")
blog.add_post Post.new("Post title 2", Time.local(2001,02,20), "Goodbye, goodbye")
blog.add_post Post.new("Post title 3", Time.local(2000,01,21), "Bonjour bonjour")
blog.organize_by_date

#blog.publish_front_page
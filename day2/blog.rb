class Blog
	def initialize
		@container = []
	end
	def add_post(post)
		@container<<post	
	end
	def publish_front_page
		date_sorted = @container.sort do|post1, post2|
		post2.date <=>post1.date
		end
		date_sorted.each do |post|
			if post.sponsor == true
				puts "******#{post.title}*******"
			else
			puts "#{post.title}"
			end
			puts "***************"
			puts "#{post.text}"
			puts "-----------" 
		end

	def show_three
		
	end
end


class Post
	attr_reader :title, :date, :text, :sponsor
	def initialize title, date, text, sponsor=false
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
	end	
	
end

blog = Blog.new
blog.add_post Post.new("Post title 1", Time.local(2000,01,20), "hello hello hello")
blog.add_post Post.new("Post title 2", Time.local(2001,02,20), "Goodbye, goodbye", true)
blog.add_post Post.new("Post title 3", Time.local(2000,01,21), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2016,07,21), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2016,08,21), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2000,01,30), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2008,01,22), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2015,10,21), "Bonjour bonjour")
blog.add_post Post.new("Post title 3", Time.local(2000,01,21), "Bonjour bonjour")
blog.organize_by_date

#blog.publish_front_page
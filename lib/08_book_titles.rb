class Book
	
	attr_accessor :title
	#def initialize(title)
	#	@title = title.split.each( &:capitalize!).join(" ")
	#end
	# def set_title(v)
	# 	@title_storage = v
	# end

def title
	@final = []
	@title = @title.capitalize.capitalize

	@title = @title.split
	@title.each do | titles |
		if 
			titles == 'a' or titles == 'the' or titles == 'an' or titles == 'and' or titles == 'in' or titles == 'of'
			@final << titles 
		else 
			@final << titles.capitalize
		end
	end
	@final.join(" ")
end


	#.each( &:capitalize! unless self.equals."a").join(" ")




	 # def title=(value)
	 # 	@title_storage = value
	 # end

  #def greeting
  #  "Hello #{@title}"
  #end


	# def title
	# @title_storage.capitalize!
	# end

  # TODO: your code goes here!
end
# b = Book.new
# b.title = "the man in the iron mask"
# p b.title







#b = Book.new("not shit")
#p b.title



 #@book.title=("my title")
# @book.send(:title=, "my title")
# @book.set_title("my title")

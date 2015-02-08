class Book
  
  attr_accessor :title

  def title
    @final = []
    @title = @title.capitalize.capitalize

    @title = @title.split
    @title.each do | titles |
      if titles == 'a' or titles == 'the' or titles == 'an' or titles == 'and' or titles == 'in' or titles == 'of'
        @final << titles 
      else 
        @final << titles.capitalize
      end
    end
    @final.join(" ")
  end

end

class Array

  def sum 
    total = 0
    self.each do | element |
      total = total + element
    end
    return total
  end

  def square
    self.map do | number |
      number * number
    end
  end

  def square!
    self.map! do | number |
      number * number
    end
  end

end

class Temperature

  attr_accessor :temperature

  def initialize(hash={})
    @temperature = hash
  end

  def in_celsius
    if @temperature.keys == [:c]
      return temperature[:c]
    else
     ((@temperature[:f] - 32) * 5/9)
    end
  end

  def in_fahrenheit  
    if @temperature.keys == [:f]
      return temperature[:f]
    else
     @temperature[:c] * 9.0 / 5 + 32
    end
  end

  def self.from_celsius(temp=0)
    new(:c => temp)
  end

  def self.from_fahrenheit(temp=0)  
    new(:f => temp)
  end

end

class Celsius < Temperature

  def initialize(temp)
    @temperature = { :c => temp}
  end

end

class Fahrenheit < Temperature

  def initialize(temp)
    @temperature = { :f => temp}
  end

end

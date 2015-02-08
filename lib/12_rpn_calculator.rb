class RPNCalculator

  attr_accessor :total, :final

  def initialize
    @stack = []
  end

  def push(num)
    @stack.push(num)
  end

  def plus
    unless @stack.empty?  
      evaluate = @stack.pop(2)
      @stack << (evaluate[0] + evaluate[1])
    else
      raise "calculator is empty"
    end
  end


  def minus
    unless @stack.empty?
      evaluate = @stack.pop(2)
      @stack << evaluate[0] - evaluate[1]
    else
      raise "calculator is empty"
    end
  end

  def divide
    unless @stack.empty?
      evaluate = @stack.pop(2)
      @stack << evaluate[0].to_f / evaluate[1].to_f
    else
      raise "calculator is empty"
    end
  end

  def times
    unless @stack.empty?
      evaluate = @stack.pop(2)
      @stack << evaluate[0] * evaluate[1]
    else
      raise "calculator is empty"
    end
  end

  def value
    @stack[-1]
  end 

  def tokens(string)
    string_tokens = string.split
    converted_tokens = []
    string_tokens.each do |token_string|
      converted_tokens << convert_token(token_string)
    end
    converted_tokens
  end

  def evaluate(string)
    tokens(string).each do | token | 
      if token == :+
        plus
      elsif token == :-
        minus
      elsif token == :/
        divide
      elsif token == :*
        times
      else
        push(token)
      end
    end
    value
  end

  def convert_token(token_string)
    if ['+','-','*','/'].include?(token_string)
      token_string.to_sym
    else
      token_string.to_i
    end
  end

end

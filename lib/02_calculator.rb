
def add(num1,num2)
  total = 0
  total = num1 + num2 
  return total
end

def subtract(num1, num2)
  total = 0
  total = num1 - num2
  return total
end

def sum(array)
  total = 0
  array.each do |element|
    total = total + element
  end
  return total
end

def multiply(array)
  total = 1
  array.each do |element|
    total = total * element
  end
  return total
end

def power(num,exp)
  total = 1
  i = 0 
    while i < exp 
    total = total * num
    i+=1
    end
    return total
end

def factorial(num)
  total = 1
  i = 1
  if num == 0 
    return total
  else
    while i <= num
      total = total * i
      i+=1
    end
  end
  return total
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  arr.reduce(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  if arr.length == 1
   return arr[0]
  end
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  if arr.length == 1
    return false
  end
  !!arr.uniq.combination(2).detect { |x, y| x + y == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s.match(/^[^aeiou\W]/i))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #if (s.match(/\D/i))
  #  return false
  #end
  if (s.match(/[^01]/) || s.empty?)
    return false
  end
  
  return ((s.to_i(base=2) % 4) == 0)
end 

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("Invalid argument.") if isbn.empty? or price <= 0.0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    return "$%0.2f" % price
  end
  
end

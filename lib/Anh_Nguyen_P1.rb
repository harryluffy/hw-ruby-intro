# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(:+).to_i
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\W]/i.match(s) != nil
 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[01]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price #sugar for getters/setters

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%0.2f", @price)
  end
end
  
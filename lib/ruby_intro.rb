# frozen_string_literal: true

# Assignment 1 : Done by Haridher Pandiyan

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each do |element|
    total += element
  end
  total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.sort!
  n = arr.length
  total = 0
  if n == 0
    total
  elsif n == 1
    total = arr[0]
  else
    total = arr[n-1] + arr[n-2]
  end
  total
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  index = 0
  n = arr.length
  arr.each_with_index do |first, index_first|
    arr.each_with_index do |second, index_second|
      if index_first != index_second
        if (first + second) == number
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  reg_exp = %r{^[^aeiouAEIOU\W\d].*}
  return string.match(reg_exp)? true : false 
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  reg_exp = %r{^(0+|[01]*(100))$}
  return string.match(reg_exp)? true : false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    # begin
      if isbn.is_a?(String) && isbn.strip != ""
        @isbn = isbn
      else
        raise ArgumentError, "Provided ISBN is not a string or is empty"
      end
      if price.is_a?(Numeric) && price > 0
        @price = price
      else
        raise ArgumentError, "Provided Price is not a numeric value or is less than or equal to 0"
      end
    # rescue ArgumentError => e
    #   puts e.message
    # end
  end

  def price_as_string
    "$" + sprintf('%.2f', @price)
  end

  attr_accessor :isbn
  attr_accessor :price
end

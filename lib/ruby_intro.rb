# When done, submit this entire file to the autograder.
		
# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject { |sum, i| sum + i  }
end

def max_2_sum arr
  return sum arr.max(2)
end

def sum_to_n? arr, n
  return false if arr.empty?
  return arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  return (s =~ /^[01]*(00)$/) || (s == "0") 
end

# Part 3

require 'action_pack'
require 'action_view'
include ActionView::Helpers::NumberHelper

class BookInStock
	# constructor
	def initialize isbn, price
		if isbn == "" || price <= 0
			raise ArgumentError.new
		end
		@isbn = isbn
		@price = price
	end

	# getter
	def isbn
		@isbn
	end

	def price
		@price
	end

	# setter
	def isbn=(new_isbn)
		@isbn = new_isbn
	end

	def price=(new_price)
		@price = new_price
	end

	def price_as_string
		return number_to_currency(@price, precision: 2) 
	end
end

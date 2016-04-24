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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

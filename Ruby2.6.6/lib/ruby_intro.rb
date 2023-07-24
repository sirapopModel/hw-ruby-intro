# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.count == 0 
    return sum
  end
  arr.each do |number|
    sum += number
  end
  return sum
end

def max_2_sum arr
  if arr.count == 0 
    return 0
  elsif arr.count == 1
    return arr[0]
  else
    temp = arr.max(2)
    return temp[0]+temp[1]
  end
end

def sum_to_n? arr, n
  for i in 0..arr.count-2 do 
    for j in i+1..arr.count-1 do
      sum = arr[i] + arr[j]
      if sum == n 
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.strip.empty? || s =~ /[^a-zA-Z]/
    return false
  else
    return s =~ /^[^AEIOUaeiou]/ ? true : false
  end

end

def binary_multiple_of_4? s
  if s =~ /(\W|\s|[a-zA-Z])/ || s.empty? || s.include?("_")
    return false
  else
    return s.to_i(2)%4 == 0 ? true : false
  end
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    @isbn = isbn.is_a?(String)&& !(isbn.empty?) ? isbn : raise(ArgumentError)
    @price = (price.is_a?(Float)||price.is_a?(Integer) ) && price >0 ?  price : raise(ArgumentError)
    end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    return "$"+ sprintf('%.2f', @price).to_s
  end
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans = 0
  for num in arr
    ans += num
  end
  return ans
end

def max_2_sum arr
  # Array with length = 0
  if arr.empty?
    return 0
  end

  # Array with length = 1
  if arr.length == 1
      return arr[-1]
  end

  # Array with length > 2
  sortedArr = arr.sort
  return  (sortedArr[-1] + sortedArr[-2])

end

def sum_to_n? arr, n
  # Base condition
  if arr.length < 2
   return false
  end 

  # Array with length > 2
  sortedArr = arr.sort
  head = 0
  tail = arr.length - 1

  while head < tail
    result = sortedArr[head] + sortedArr[tail]

    if result == n
      return true
    end

    if result >= n
      tail -= 1
    else
      head += 1
    end
  end

  return false

end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # Base conditions
  if (s.length == 0 || s.match?(/[^a-zA-Z]/))
    return false
  end

  return s.match?(/\A[^aeiouAEIOU]/i) 
end

def binary_multiple_of_4? s
  # Base condition
  if  (s.length == 0 || s.match?(/[^01]/i))  
     return false
  end

  # Binary to Decimal conversion
  decimalNumber = 0
  s.each_char { |d|
    decimalNumber += (d == "1") ? 1 : 0
    decimalNumber *= 2
  }

  return decimalNumber % 4 == 0

end

# Part 3

class BookInStock
  
  # getters and setters 
  attr_accessor :isbn
  attr_accessor :price

  # Constructor Initialization
  def initialize(isbn, price)

    if (price == nil || price <= 0)
      raise ArgumentError, 'Invalid price'
    end

    if (isbn == nil || isbn.size == 0)
      raise ArgumentError, 'Invalid ISBN'
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    displayPrice ="%.2f" %  @price
    return "$"+displayPrice
  end
end


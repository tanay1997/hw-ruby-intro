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
  ans = 0
  sortedArr = arr.sort
  ans = sortedArr[-1] + sortedArr[-2]
  return ans

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

    if (result == n)
      return true
    end

    if (result < n)
      head += 1
    else
      tail -= 1
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

  regVar = /\A[^aeiouAEIOU]/i 
  return s.match?(regVar)

end

def binary_multiple_of_4? s
  # Base condition
  if  (s.length == 0 || s.match?(/[^01]/i))  
     return false
  end

  # Binary to Decimal conversion
  decimalNumber = 0
  s.split("").each do |i|
    decimalNumber += (i == "1") ? 1 : 0
    decimalNumber *= 2
  end

  if (decimalNumber % 4 == 0)
   return true
  end

  return false

end

# Part 3

class BookInStock
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

  def isbn=(isbn)
    # Base condition
    if (isbn == nil || isbn.size == 0)
      raise ArgumentError, 'Invalid ISBN'
    end

    @isbn = isbn
  end

  def price=(price)
    # Base condition
    if (price == nil || price <= 0)
      raise ArgumentError, 'Invalid price'
    end

    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def price_as_string
    displayPrice ="%.2f" %  @price
    return "$"+displayPrice
  end
end

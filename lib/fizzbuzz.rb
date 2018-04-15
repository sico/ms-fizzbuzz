def fizzbuzz(number)
  if is_divisible_by_fifteen?(number)
    'Fizz Buzz'
  elsif is_divisible_by_three?(number)
    'Fizz'
  elsif is_divisible_by_five?(number)
    'Buzz'
  else
    number
  end
end


def is_divisible_by_three?(number)
  is_divisible_by?(number, 3)
end

def is_divisible_by_five?(number)
  is_divisible_by?(number, 5)
end

def is_divisible_by_fifteen?(number)
  is_divisible_by?(number, 15)
end

def is_divisible_by?(number, divisor)
  number % divisor == 0
end
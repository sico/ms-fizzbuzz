def fizzbuzz(fizzy)
  if is_divisible_by_fifteen?(fizzy)
    'Fizz Buzz'
  elsif is_divisible_by_three?(fizzy)
    'Fizz'
  elsif is_divisible_by_five?(fizzy)
    'Buzz'
  else
    fizzy
  end
end


def is_divisible_by_three?(fizzy)
  is_divisible_by?(fizzy, 3)
end

def is_divisible_by_five?(fizzy)
  is_divisible_by?(fizzy, 5)
end

def is_divisible_by_fifteen?(fizzy)
  is_divisible_by?(fizzy, 15)
end

def is_divisible_by?(fizzy, divisor)
  (fizzy % divisor).zero?
end
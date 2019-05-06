def prime?(num)
  # check if num is pos/neg
  if num <= 1
    false
  # check if num is equal to 2 or 3
  elsif num == 2 || num == 3
    true
  else
# range is inclusive of all numbers from 2 to num/2
    range = (2..num/2).to_a
  
# loop through range, check if num is divisible by any element, use num % element == 0 to check  
# if divisible by number, return false
# else, eliminate all other numbers in range that are divisible
# after condition fails for all numbers, return true

    range.each do |el|
      if num % el == 0 > num
        return false
      else 
        range.delete_if{|other_el| other_el % el == 0}
      end
    end
    true
  end
end
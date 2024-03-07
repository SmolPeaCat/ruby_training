# frozen_string_literal: true

def find_int(arr,num)
  if arr.include?(num)
    puts "#{num} is in the array"
  end
end


arr = [1, 3, 5, 7, 9, 11]
number = 3

find_int(arr,number)


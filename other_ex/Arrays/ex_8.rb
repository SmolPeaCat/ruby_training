# frozen_string_literal: true

arr = [1,2,3,4,5]

new_arr = arr.map { |num| num += 2  }

puts "old array"
p arr
puts "New array"
p new_arr


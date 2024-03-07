# frozen_string_literal: true
# The user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Enter a fucking number !!!"

number = gets.chomp.to_i

if number <= 50
  puts "Number is probably between 0 and 50"
elsif number <= 100
  puts "Humm I would guess between 51 and 100"
else
  puts "more than 100 ?"
end


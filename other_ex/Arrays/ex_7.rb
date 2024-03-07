# frozen_string_literal: true

puts "Input a random phrase it will be fun I swear"

phrase = "I should get a therapist"

arr = phrase.split(' ')

arr.each_with_index do |word, id|
  puts "at position #{id} you find #{word}"
end


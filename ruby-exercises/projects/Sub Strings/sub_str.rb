# frozen_string_literal: true

def substrings(str, dict)
  arr = str.downcase.split
  final_res = Hash.new { 0 }
  arr.each do |word|
    dict.each do |sub|
      sub = sub.downcase
      final_res[sub] += 1 if word.include?(sub)
    end
  end
  final_res
end

# test area
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
res = substrings("Howdy partner, sit down! How's it going?", dictionary)

puts res

# frozen_string_literal: true
def all_caps(word)
  if word.length > 10
    puts word.upcase
  else
    puts "Word is too short"
  end
end

word = "My name is JussaPE"

all_caps(word)

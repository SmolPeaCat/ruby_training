# frozen_string_literal: true

def rec_count_down(number)
  if number <= 0
    puts number
  else
    rec_count_down(number - 1)
  end
end

rec_count_down(10)

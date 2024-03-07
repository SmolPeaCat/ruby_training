# frozen_string_literal: true

MIN_ASCII_NUM_LOW = 97
MAX_ASCII_NUM_LOW = 122

def check_str(str)
  str.instance_of?(String)
end

def check_type(type)
  type.instance_of?(String) && type.include?('left') || type.include?('right')
end

def check_jmp(jump)
  jump.instance_of?(Integer) && jump >= 0
end

def letter?(chr)
  chr =~ /[[:alpha:]]/
end

def upcase?(chr)
  chr == chr.upcase
end

def shift_char(char, type, jmp)
  str_val = char.ord
  curr_ascii_val = if type == 'left'
                     str_val - jmp
                   elsif type == 'right'
                     str_val + jmp
                   end
  if curr_ascii_val < MIN_ASCII_NUM_LOW
    diff = MIN_ASCII_NUM_LOW % curr_ascii_val
    curr_ascii_val = MAX_ASCII_NUM_LOW - diff + 1
  elsif curr_ascii_val > MAX_ASCII_NUM_LOW
    diff = curr_ascii_val % MAX_ASCII_NUM_LOW
    curr_ascii_val = MIN_ASCII_NUM_LOW + diff - 1
  end
  curr_ascii_val.chr
end

def caesar_encrypt(str, type, jmp)

  if check_str(str) && check_type(type) && check_jmp(jmp)
    puts 'processing your command...'
    res = ''
    arr = str.split('')
    arr.each do |char|
      is_up = upcase?(char)
      char = char.downcase if is_up
      char = shift_char(char, type, jmp) if letter?(char)
      char = char.upcase if is_up
      res += char
    end
    res
  else
    'Something went wrong...'
  end
end

def caesar_decrypt(str, type, jump)
  type = type == 'left' ? 'right' : 'left'
  caesar_encrypt(str, type, jump)
end

# test area
str = 'What a string!'
shift_type = 'right'
jump = 5

res = caesar_encrypt(str, shift_type, jump)
puts res
puts caesar_decrypt(res, shift_type, jump)

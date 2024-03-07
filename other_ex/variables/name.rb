p "What's your name bud ?"
first_name = gets.chomp
p "#{first_name} ? lovely name !"

p "What about your family name ?"
last_name = gets.chomp
p "Oh #{last_name}.. I heard a lot about your family !"

p "My family is going to come soon, do you mind if I tell them about you ?"

answer = gets.chomp

if answer == "no"
  puts "Her family comes in..."
  full_name = first_name + " " + last_name
  10.times do
    puts "Oh hey #{full_name} !"
  end
  puts "#{full_name} : Hey..guys and girls"
else
  puts "*Instantly kills you*"
end
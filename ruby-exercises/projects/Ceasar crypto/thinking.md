# Thinking. md for Caesar Crypto technique

## What ?

The technique is pretty simple

it consist on shifting left or right a certain character

for example
```ruby
caesar_cipher("What a string!", right ,5)
# returns
  => "Bmfy f xywnsl!"
```
**added the direction for the funzyz**

## TODOS

`main function`  
- Get every character in the string ( only the letters)
- Need to find a way so that if a character is an uppercase it will convert it to a lower case then back to upcase
- Don't forget the error handling :D


`character shift`  
- modify the value of the ´jump´ depending on if the shift is left or right
- for each of those characters, take their ASCII num and shift left or right
  - If the result will be below the minimum ASCII num (97 : "a"),
  doing ´MIN % num´ will give me the difference between the two and I will be able to use that to 
  calculate the new value by subtracting this diff to the max value ( + 1 since the index starts at 0)
  to get the final ASCII value
  - else if the res is above the maximum value I will do the same but diff will be obtained by ´num % MAX
  and I will have to add this diff to the MIN value to get the final ASCII value



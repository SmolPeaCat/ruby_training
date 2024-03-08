# thinking.md for `Sub Strings`

## What ?

Well, we have to create a method and give it two args, the first one will be a string
and the second a `dictionary(array)` containing a list of potential sub-strings 

Our function will have to check the words in the `string` and see if it finds any substrings, if it does
we will need to put that substrings inside of a hash containing the `substring` and its `repetition count`

## How ?

- first extract the words from the string 
- create an hash var with an initial value of 0
- then for each of those words
- Since `Has.new{0}` creates a default value as soon as it's called, don't even need to create the var inside first then
increment it.
I can simply increment directly if `sub` is inside of `word`


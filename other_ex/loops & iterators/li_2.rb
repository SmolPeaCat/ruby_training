# frozen_string_literal: true
# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP".
# Each loop can get info from the user
# Decide to spice it up a bit
require 'json'
require 'net/http'
require 'uri'
require'pry-byebug'


def generate_question
  # Construct a URI object with the API endpoint URL
  uri = URI.parse('https://opentdb.com/api.php?amount=1')
  # Create a new instance
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  # Make the HTTP request
  response = http.get(uri.request_uri)

  if response.code == '200'
    data = JSON.parse(response.body)
    res = data['results']
    puts res.first['question']
  else
    puts "HTTP Error: #{response.code}"
  end
end

input = ''
while input != 'STOP'
  puts 'Generating a question...'
  generate_question if input != 'STOP'
  input = gets.chomp.upcase
end
puts 'Goodbye !'

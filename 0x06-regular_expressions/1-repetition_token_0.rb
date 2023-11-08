#!/usr/bin/env ruby

# Import the Oniguruma library
require 'oniguruma'

# Define a method that accepts a string and a pattern
def match_pattern(string, pattern)
  # Create a new regular expression with the pattern
  regex = Oniguruma::ORegexp.new(pattern)

  # Use the match method to check if the string matches the pattern
  match_data = regex.match(string)

  # If there's a match, print the match. Otherwise, print 'No match'.
  if match_data
    puts "Matched: #{match_data[0]}"
  else
    puts 'No match'
  end
end

# Get the string from the command line argument
string = ARGV[0]

# Define the pattern
pattern = 'hb(t*)n'

# Call the method with the string and the pattern
match_pattern(string, pattern)

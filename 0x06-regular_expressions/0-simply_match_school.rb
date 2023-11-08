#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.length != 1
  puts "Usage: #{File.basename(__FILE__)} <string>"
  exit 1
end

# The regular expression you want to use
regex = /Scho*l/

# Get the argument from the command line
input_string = ARGV[0]

# Perform the regular expression matching
if input_string.match(regex)
  puts "Match found: #{input_string}"
else
  puts "No match found: #{input_string}"
end

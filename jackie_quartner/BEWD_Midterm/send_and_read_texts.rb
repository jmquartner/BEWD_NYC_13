require 'twilio-ruby'
require 'pry'

require_relative 'lib/text'
require_relative 'lib/read'

def send_new_text
  puts "Let's send a text message!"
  puts "Please enter your contacts 9 digit phone number"
  puts "starting with the area code"
  to = "+1#{gets.strip}"

  puts "What do you want to say to him/her?"
  body = gets.strip

  Text.new(to, body)
end

def read_texts
  puts "Who do you want to read texts from?"
  puts "Please enter your contacts 9 digit phone number"
  puts "starting with the area code"
  from = "+1#{gets.strip}"

  Read.new(from)
end


puts "Welcome to Jackie's Midterm"
selected_option = 0
until selected_option == 3

  puts "What do you want to do? Please select an option:"
  puts "1 - Send a new text message"
  puts "2 - Read text messages"
  puts "3 - exit"

  selected_option = gets.strip.to_i
  if selected_option == 1
    send_new_text
  elsif selected_option == 2
    read_texts
  else
    puts "Please enter 1, 2, or 3"
  end
end


require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end
#=> nil

def deal_card
  card = Random.new
  card.rand(1..11)
end
#=> integer between 1 and 11

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end
#=> nil

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
#=> nil

def get_user_input
  user_input = gets.chomp
end
#=> user input that is either 'h' or 's'

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
#=> nil

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total
  else
    invalid_command
    prompt_user
    card_total
  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  count = initial_round
  loop do
    count = hit?(count)
    display_card_total(count)
    if count > 21
      break
    end
  end
  end_game(count)
end

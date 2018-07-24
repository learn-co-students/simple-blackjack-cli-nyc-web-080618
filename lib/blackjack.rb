def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total 
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cardTotal = initial_round
  until cardTotal > 21
  cardTotal = hit?(cardTotal)
  display_card_total(cardTotal)
  end 
  end_game(cardTotal)
end
    

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card
  total = total + deal_card
  display_card_total(total)
  return total
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input
  loop do
    if input == "s"
      return num
    elsif input == "h"
      newcard = deal_card
      num = num + newcard
      return num
    else 
      invalid_command
      prompt_user
      input = get_user_input
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#hit?(5)

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  welcome
  total = initial_round
  until total > 21
    
    temp = hit?(total)
    total = temp
    display_card_total(total)
  end
end_game(total)
end
    

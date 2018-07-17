def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(numIn)
 puts "Your cards add up to #{numIn}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(numIn)
  card_total = numIn
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total += deal_card
  end
  if input != 'h' && input != 's'
    until input == 'h' || input == 's' do
      invalid_command
      prompt_user
      input = get_user_input
    end
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  while sum <= 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end

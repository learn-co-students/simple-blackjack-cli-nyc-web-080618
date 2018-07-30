def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  prng = Random.new
  prng.rand(1..11)
end

def display_card_total(number)
  card_total = number
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  card_total = number
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  display_card_total(first_card+second_card)
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 's'
    number
  elsif input == 'h'
    new_card = deal_card
    number + new_card
  else
    invalid_command
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
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    

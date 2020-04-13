def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp 
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  while input != 'h' && input != 's' do 
    invalid_command
    prompt_user
    input = get_user_input
  end
  while input == 's' do
    hit?(current_total)
  end
  if input == 'h' 
    current_total += deal_card
  end
  current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current_total = initial_round
  new_total = hit?(current_total)
  display_card_total(new_total)
  until new_total > 21 do
    new_total = hit?(new_total)
  end
  
end
    

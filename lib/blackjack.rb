require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

#binding.pry

def deal_card
  deal_card = rand(11)+1
  deal_card
end
# binding.pry

def display_card_total(card_total)
#  binding.pry
  puts "Your cards add up to #{card_total}"
end
# binding.pry

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
#binding.pry

def get_user_input
  gets.chomp()
end

def end_game(card_total)
  if card_total > 22
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum) #don't need to type in puts because we are already calling the method
  sum
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  new_card_value = 0
    if user_input == "s"
      new_card_value = current_card_total
    else user_input == "h"
      new_card_value = current_card_total + deal_card
    until user_input == "s" || user_input == "h"
      # binding.pry
      invalid_command
      prompt_user
      user_input = get_user_input
    end
  end
  new_card_value
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
#  binding.pry
  welcome
  card_total = initial_round
    if card_total < 22
      card_total = hit?(card_total)
      display_card_total(card_total)
    until card_total > 22
      hit?(card_total)
    end
  end
end_game(card_total)
end

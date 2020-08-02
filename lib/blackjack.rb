require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 array = [1,2,3,4,5,6,7,8,9,10,11]
array.sample
   
end

def display_card_total(card_total)
  
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  
card_total
 
end

def hit?(card_total)
  prompt_user
  respond = get_user_input
  while respond != 'h' && respond != 's' 
  invalid_command
   prompt_user
  respond = get_user_input
  end
    if respond == 's'
      nil 
      
    elsif respond == 'h'
      card_total += deal_card
      
  end
card_total 
end

# prompt_user 
# respond = get_user_input    
# until respond == 'h'|| respond == 's' 
# invalid_command
# prompt_user 
# respond = get_user_input
# end
# if respond == 'h'
# card_total += deal_card
# end 
#   card_total 
# end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
 until card_total > 21
card_total = hit?(card_total)
display_card_total(card_total)
 end
end_game(card_total)
end    

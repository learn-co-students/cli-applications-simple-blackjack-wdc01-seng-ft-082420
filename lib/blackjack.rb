require 'pry'

def welcome
  # code #welcome here
  
  puts "Welcome to the Blackjack Table"
  
end

def deal_card
  # code #deal_card here
  
  return rand(1..11)
  
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
  
  return gets.chomp
  
end

def end_game(card_total)
  # code #end_game here
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round
  # code #initial_round here
  
  card1 = deal_card
  card2 = deal_card
  sum = card2 + card1
  display_card_total(sum)
  return sum 
  
end

def hit?(card_sum)
  # code hit? here
  
  prompt_user
  input = get_user_input
  card = card_sum
 
    if input == 's'
      #do nothing 
    elsif input == 'h'
      card = deal_card + card 
    else
      invalid_command
      prompt_user
      input = get_user_input
      until input == "h" || input == "s" do 
        invalid_command
        prompt_user
        input = get_user_input
      end    
      if input == 's'
        #do nothing 
      else input == 'h'
        card = deal_card + card
      end
    end
  
  return card
  
end

def invalid_command
  # code invalid_command here
  
  puts "Please enter a valid command"
  
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
#binding.pry 
def runner
  # code runner here
  
  welcome
  sum = initial_round
  until sum > 21 do 
    sum = hit?(sum)
    display_card_total(sum)
  end
  
  end_game(sum)
  
end
    

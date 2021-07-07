def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total (card_total)

puts "Your cards add up to #{card_total}"

end

def prompt_user
puts  "Type 'h' to hit or 's' to stay"

end
 
def get_user_input
 responses = gets.chomp

# code #get_user_input here
end

def end_game (total)

    puts "Sorry, you hit #{total}. Thanks for playing!"

end

def initial_round
  
sum = deal_card + deal_card
display_card_total(sum)
 sum 
end

def hit? (num)
  
prompt_user
input = get_user_input
if input == "s"
  num
elsif input =="h"
 num+= deal_card
else 
 invalid_command
   hit? (num)
   
 
end
num
end


def invalid_command
 puts "Please enter a valid command"
 end 

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner 
   num = initial_round
   
  welcome
  while num <21 do 
  num = initial_round
  hit? (num)
  if num > 21
  end_game
end
num
end
end
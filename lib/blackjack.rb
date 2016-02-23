def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
	card = rand (1..11)
	card
  # code #deal_card here
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
 puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  result = gets.chomp
  result
end

def end_game(card_total)
  # code #end_game here
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
	
	card = deal_card + deal_card
	display_card_total(card)
	card
	
end


def hit?(total)
  	prompt_user
	result = get_user_input
	if result == "s"
	
	elsif result == "h"
		
		total+=deal_card
	else 
		invalid_command
		prompt_user
	end
	total
	
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
  total = initial_round
  
 until total > 21
	
  	new = hit?(total)
  	while new == total
  		new = hit?(total)
  	end
  
  	total = new 
  	
  	display_card_total(total)
  end 

  end_game(total)
  
end
     

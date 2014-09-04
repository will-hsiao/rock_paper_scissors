#Lesson 2 assignment
#The player 1 choose from a set of [Rock, Paper, Scissors], then the player 2 choose from the set of [Rock, Paper, Scissors]
#Than compare the player1's choice with the player2's choice to decide which one wins or a tie.
#Class: Set of Rock, paper, scissors
#Class: Player

#-----------Rock Paper Scissor
class RockPaperScissors
	attr_reader :arbitration, :arbi_words
       TIE = 0; LOSE = 1; WIN = 2
	def initialize
        @arbitration=[ [TIE, LOSE, WIN], [WIN, TIE, LOSE], [LOSE, WIN, TIE]]
        @arbi_words=["Rock break Scissors",  "Paper wraps Rock", "Scissors cut Paper", "Paper wraps Rock"]
	end

	def arbitrate(ch1, ch2)
		result=@arbitration[ch1.choice][ch2.choice]
		case result
		when TIE
			puts "It's a tie!"
		when LOSE
			puts @arbi_words[ch2.choice]
			puts "#{ch1.name} lose!"
		when WIN
			puts @arbi_words[ch1.choice]
			puts "#{ch1.name} win!"
		end
	end

end #end class

class Player

	attr_accessor :name, :choice, :gesture

	def initialize(n)
             @choice = nil
             @gesture = nil
		@name=n
             @gesture_to_i={"r"=>0,  "p"=>1, "s"=>2}
             @choice_to_g = ["r", "p", "s"]

	end
	def choose_by_input
		begin
			puts "Choose one: R/P/S"
			@gesture=gets.chomp
		end while @gesture != 'r' && @gesture != 'p' && @gesture != 's'
		@choice = @gesture_to_i[@gesture]

	end

	def choose_by_rand
		@choice = [1,2.3].sample
		@gesture =@choice_to_g[@choice]
	end

end #end class Player

class Game

	def initialize

	end



#----------Sceniaro------------------
#get user's gesture
#if user's gesture wrong, get again

#get computer's gesture
#compare user's vs. computer's
#print result

	def run
      player1 = Player.new("You")
      player2 = Player.new("Computer")
      rps = RockPaperScissors.new
		begin
			puts "---------Play Rock Paper Scissors!----------------"

			player1.choose_by_input
			player2.choose_by_rand

			puts "#{player1.name} picked #{player1.gesture}, and #{player2.name} picked #{player2.gesture}"

			rps.arbitrate(player1, player2)

			puts "Do you want to play again? (Y/N)"
			play=gets.chomp.downcase
			play = ( play =='y') ? TRUE: FALSE

		end while play==TRUE
	end

end #end Game Class

Game.new.run



#Lesson 2 assignment
#-----------Rock Paper Scissor
class RockPaperScissors
	attr_accessor :choice, :gesture
	attr_reader :gesture_to_i, :choice_to_g, :arbitration, :arbi_words

	TIE = 0; LOSE = 1; WIN = 2
	@@arbitration=[ [TIE, LOSE, WIN], [WIN, TIE, LOSE], [LOSE, WIN, TIE]]
	@@arbi_words=["Rock break Scissors",  "Paper wraps Rock", "Scissors cut Paper", "Paper wraps Rock"]
	@@gesture_to_i={"r"=>0,  "p"=>1, "s"=>2}
	@@choice_to_g = ["r", "p", "s"]

	def initialize
		@choice = nil
		@gesture = nil
	end


	def choose_by_input
		begin
			puts "Choose one: R/P/S"
			@gesture=gets.chomp
		end while @gesture != 'r' && @gesture != 'p' && @gesture != 's'
		@choice = @@gesture_to_i[@gesture]

	end

	def choose_by_rand
		@choice = rand(3)
		@gesture =@@choice_to_g[@choice]
	end

	def arbitrate(ch2)
		result=@@arbitration[@choice][ch2]
		case result
		when TIE
			puts "It's a tie!"
		when LOSE
			puts @@arbi_words[ch2]
			puts "You lose!"
		when WIN
			puts @@arbi_words[@choice]
			puts "You win!"
		end
	end

end #end class


#----------Sceniaro------------------
#get user's gesture
#if user's gesture wrong, get again

#get computer's gesture
#compare user's vs. computer's
#print result

begin
	puts "---------Play Rock Paper Scissors!----------------"

	player1 = RockPaperScissors.new
	player2 = RockPaperScissors.new

	player1.choose_by_input
	player2.choose_by_rand

	puts "You picked #{player1.gesture}, and Computer picked #{player2.gesture}"

	player1.arbitrate(player2.choice)

	puts "Do you want to play again? (Y/N)"
	play=gets.chomp
	play = (play == 'Y' || play =='y') ? TRUE: FALSE

end while play==TRUE

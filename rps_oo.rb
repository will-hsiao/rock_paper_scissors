
class RockPaperScissors


		TIE = 0
		LOSE = 1
		WIN = 2
		arbi_pattern =[ [TIE, LOSE, WIN], [WIN, TIE, LOSE], [LOSE, WIN, TIE]]
		arbi_words=["Rock break Scissors",  "Paper wraps Rock", "Scissors cut Paper", "Paper wraps Rock"]
		rps_string=["Rock", "Paper", "Scissors"]


	def initialize()


	end

	def self.arbitrate(ch1, ch2)
		result = arbi_pattern[ch1][ch2]

		case result
			when TIE
				puts "It's a tie!"
			when LOSE
				puts arbi_words[computer]
				puts "You lose!"
			when WIN
				puts arbi_words[usr]
				puts "You win!"
		end
	end
end

class HumanPlayer < RockPaperScissors
		
		choice=""
		
		def choice_to_i(ch)
		 return  {"r"=>0, "p"=>1, "s"=>2}[ch]
		end

		def choose
			begin
				puts "Choose one: R/P/S"
				choice = gets.chomp.downcase
			end while (choice !="r") && (choice!="p") && (choice!="s")
			puts choice
			puts choice_to_i(choice)
			return choice_to_i(choice)
		end

end

class MachinePlayer < RockPaperScissors

		def choose
		choice = rand(2)
		return choice
		end
end



	player1 = HumanPlayer.new
	player2 = MachinePlayer.new

	RockPaperScissors.arbitrate(player1.choose, player2.choose)

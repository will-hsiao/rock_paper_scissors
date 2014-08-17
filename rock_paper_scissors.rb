#Lesson 1 assignment
#-----------Rock Paper Scissor
TIE=0
LOSE=1
WIN=2
arbitrate=[ [TIE, LOSE, WIN], [WIN, TIE, LOSE], [LOSE, WIN, TIE]]
arbi_words=["Rock break Scissors",  "Paper wraps Rock", "Scissors cut Paper", "Paper wraps Rock"]
rps_status=["Rock", "Paper", "Scissors"]
rps_hash={"r"=>0, "R"=>0, "P"=>1, "p"=>1, "s"=>2, "S"=>2}


puts "Play Rock Paper Scissors!"

#----------Sceniaro------------------
#get user's gesture
#if user's gesture wrong, get again

#get computer's gesture
#compare user's vs. computer's
#print result

begin
	begin
		puts "Choose one: R/P/S"
		usr=gets.chomp
		usr=rps_hash[usr]
	end while usr == nil

	computer=rand(3)
	puts "You picked #{rps_status[usr]}, and Computer picked #{rps_status[computer]}"

	result=arbitrate[usr][computer]

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
	
	puts "Do you want to play again? (Y/N)"
	play=gets.chomp
	play = (play == 'Y' || play =='y') ? TRUE: FALSE

end while play==TRUE
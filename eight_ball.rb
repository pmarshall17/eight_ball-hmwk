@responses = ["As If", "Ask Me If I Care", "Dumb Question, Ask Another", "Forget About It", "Get A Clue", "In Your Dreams", "Not", "Not A Chance", "Obviously", "Oh Please", "Sure", "Thats Ridiculous", "Well Maybe", "What Do You Think?", "Whatever", "Who Cares?","Yeah Right", "You Wish", "You've Got To Be Kidding..."]

def menu
	puts "*******Ruby Magic Eight Ball*******"
	puts "Press '1' to Enter Question"
	puts "Press '2' to See All Answers"
	puts "Press '3' to Quit Program"
	puts "Press '4' to add answers of your own to the bank"
		@user_response = gets.strip.to_i
	case
		when @user_response == 1
			puts "Please enter your question below:" 
			@question_response = gets.strip
			output
		when @user_response == 2
			puts @responses.join("\n")
		when @user_response == 3
		puts "Terminating program...Goodbye"
		exit
		when @user_response == 4
			valid = false
			until valid
			  puts "Enter your customized response below:"
			  answer = gets.strip
			  if @responses.include? answer
	        puts "If you checked the bank. You'd know that answer exists :/ ... Try again"
        else
        	valid = true
        end
      end
			@responses << answer
			puts @responses
	end
end

def output
	puts @responses.sample
end		


while true

menu

end



